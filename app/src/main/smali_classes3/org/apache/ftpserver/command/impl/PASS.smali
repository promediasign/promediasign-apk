.class public Lorg/apache/ftpserver/command/impl/PASS;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "SourceFile"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    const-class v0, Lorg/apache/ftpserver/command/impl/PASS;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/PASS;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method private delayAfterLoginFailure(I)V
    .locals 3

    if-lez p1, :cond_0

    iget-object v0, p0, Lorg/apache/ftpserver/command/impl/PASS;->LOG:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Waiting for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " milliseconds due to login failure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    int-to-long v0, p1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    const-string v9, "Login success - "

    const-string v10, "Anonymous login success - "

    const-string v2, "Login failure - "

    invoke-interface/range {p2 .. p2}, Lorg/apache/ftpserver/ftplet/FtpletContext;->getFtpStatistics()Lorg/apache/ftpserver/ftplet/FtpStatistics;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/apache/ftpserver/impl/ServerFtpStatistics;

    const/4 v12, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    invoke-interface/range {p3 .. p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUserArgument()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v6, "PASS"

    const/4 v7, 0x0

    const/16 v5, 0x1f7

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->reinitialize()V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v6, "PASS"

    const/4 v7, 0x0

    const/16 v5, 0xca

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->reinitialize()V

    return-void

    :cond_1
    if-eqz v14, :cond_2

    :try_start_2
    const-string v0, "anonymous"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v15, 0x1

    goto :goto_0

    :cond_2
    const/4 v15, 0x0

    :goto_0
    if-eqz v15, :cond_4

    invoke-interface {v11}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getCurrentAnonymousLoginNumber()I

    move-result v0

    invoke-interface/range {p2 .. p2}, Lorg/apache/ftpserver/impl/FtpServerContext;->getConnectionConfig()Lorg/apache/ftpserver/ConnectionConfig;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ftpserver/ConnectionConfig;->getMaxAnonymousLogins()I

    move-result v4

    if-nez v4, :cond_3

    iget-object v5, v1, Lorg/apache/ftpserver/command/impl/PASS;->LOG:Lorg/slf4j/Logger;

    const-string v6, "Currently {} anonymous users logged in, unlimited allowed"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v5, v1, Lorg/apache/ftpserver/command/impl/PASS;->LOG:Lorg/slf4j/Logger;

    const-string v6, "Currently {} out of {} anonymous users logged in"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v6, v7, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    if-lt v0, v4, :cond_4

    iget-object v0, v1, Lorg/apache/ftpserver/command/impl/PASS;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Too many anonymous users logged in, user will be disconnected"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const-string v6, "PASS.anonymous"

    const/4 v7, 0x0

    const/16 v5, 0x1a5

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->reinitialize()V

    return-void

    :cond_4
    :try_start_3
    invoke-interface {v11}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getCurrentLoginNumber()I

    move-result v0

    invoke-interface/range {p2 .. p2}, Lorg/apache/ftpserver/impl/FtpServerContext;->getConnectionConfig()Lorg/apache/ftpserver/ConnectionConfig;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ftpserver/ConnectionConfig;->getMaxLogins()I

    move-result v3

    if-nez v3, :cond_5

    iget-object v4, v1, Lorg/apache/ftpserver/command/impl/PASS;->LOG:Lorg/slf4j/Logger;

    const-string v5, "Currently {} users logged in, unlimited allowed"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    iget-object v4, v1, Lorg/apache/ftpserver/command/impl/PASS;->LOG:Lorg/slf4j/Logger;

    const-string v5, "Currently {} out of {} users logged in"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    if-eqz v3, :cond_6

    if-lt v0, v3, :cond_6

    iget-object v0, v1, Lorg/apache/ftpserver/command/impl/PASS;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Too many users logged in, user will be disconnected"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const-string v6, "PASS.login"

    const/4 v7, 0x0

    const/16 v5, 0x1a5

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->reinitialize()V

    return-void

    :cond_6
    :try_start_4
    invoke-interface/range {p2 .. p2}, Lorg/apache/ftpserver/ftplet/FtpletContext;->getUserManager()Lorg/apache/ftpserver/ftplet/UserManager;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v3, 0x0

    :try_start_5
    new-instance v4, Lorg/apache/ftpserver/usermanager/impl/UserMetadata;

    invoke-direct {v4}, Lorg/apache/ftpserver/usermanager/impl/UserMetadata;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/InetSocketAddress;

    if-eqz v5, :cond_7

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v5

    check-cast v5, Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ftpserver/usermanager/impl/UserMetadata;->setInetAddress(Ljava/net/InetAddress;)V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_7
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getClientCertificates()[Ljava/security/cert/Certificate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ftpserver/usermanager/impl/UserMetadata;->setCertificateChain([Ljava/security/cert/Certificate;)V

    if-eqz v15, :cond_8

    new-instance v5, Lorg/apache/ftpserver/usermanager/AnonymousAuthentication;

    invoke-direct {v5, v4}, Lorg/apache/ftpserver/usermanager/AnonymousAuthentication;-><init>(Lorg/apache/ftpserver/usermanager/impl/UserMetadata;)V

    goto :goto_4

    :cond_8
    new-instance v5, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;

    invoke-direct {v5, v14, v13, v4}, Lorg/apache/ftpserver/usermanager/UsernamePasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ftpserver/usermanager/impl/UserMetadata;)V

    :goto_4
    invoke-interface {v0, v5}, Lorg/apache/ftpserver/ftplet/UserManager;->authenticate(Lorg/apache/ftpserver/ftplet/Authentication;)Lorg/apache/ftpserver/ftplet/User;

    move-result-object v0
    :try_end_5
    .catch Lorg/apache/ftpserver/ftplet/AuthenticationFailedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    :goto_5
    :try_start_6
    iget-object v4, v1, Lorg/apache/ftpserver/command/impl/PASS;->LOG:Lorg/slf4j/Logger;

    const-string v5, "PASS.execute()"

    invoke-interface {v4, v5, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_6
    move-object v0, v3

    goto :goto_7

    :catch_1
    iget-object v0, v1, Lorg/apache/ftpserver/command/impl/PASS;->LOG:Lorg/slf4j/Logger;

    const-string v4, "User failed to log in"

    invoke-interface {v0, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_6

    :goto_7
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUserArgument()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getMaxIdleTime()I

    move-result v6

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/User;->getEnabled()Z

    move-result v7

    if-nez v7, :cond_9

    const-string v6, "PASS"

    const/4 v7, 0x0

    const/16 v5, 0x212

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->reinitialize()V

    return-void

    :cond_9
    :try_start_7
    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->setUser(Lorg/apache/ftpserver/ftplet/User;)V

    invoke-virtual {v8, v3}, Lorg/apache/ftpserver/impl/FtpIoSession;->setUserArgument(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/User;->getMaxIdleTime()I

    move-result v3

    invoke-virtual {v8, v3}, Lorg/apache/ftpserver/impl/FtpIoSession;->setMaxIdleTime(I)V

    const/16 v16, 0x1

    goto :goto_8

    :cond_a
    invoke-virtual {v8, v3}, Lorg/apache/ftpserver/impl/FtpIoSession;->setUser(Lorg/apache/ftpserver/ftplet/User;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/16 v16, 0x0

    :goto_8
    if-nez v16, :cond_d

    :try_start_8
    invoke-virtual {v8, v4}, Lorg/apache/ftpserver/impl/FtpIoSession;->setUser(Lorg/apache/ftpserver/ftplet/User;)V

    invoke-virtual {v8, v5}, Lorg/apache/ftpserver/impl/FtpIoSession;->setUserArgument(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Lorg/apache/ftpserver/impl/FtpIoSession;->setMaxIdleTime(I)V

    invoke-interface/range {p2 .. p2}, Lorg/apache/ftpserver/impl/FtpServerContext;->getConnectionConfig()Lorg/apache/ftpserver/ConnectionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/ConnectionConfig;->getLoginFailureDelay()I

    move-result v0

    invoke-direct {v1, v0}, Lorg/apache/ftpserver/command/impl/PASS;->delayAfterLoginFailure(I)V

    iget-object v0, v1, Lorg/apache/ftpserver/command/impl/PASS;->LOG:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    const-string v6, "PASS"

    const/16 v5, 0x212

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v7, v14

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    invoke-interface {v11, v8}, Lorg/apache/ftpserver/impl/ServerFtpStatistics;->setLoginFail(Lorg/apache/ftpserver/impl/FtpIoSession;)V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->increaseFailedLogins()V

    invoke-interface/range {p2 .. p2}, Lorg/apache/ftpserver/impl/FtpServerContext;->getConnectionConfig()Lorg/apache/ftpserver/ConnectionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/ConnectionConfig;->getMaxLoginFailures()I

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFailedLogins()I

    move-result v2

    if-lt v2, v0, :cond_b

    iget-object v0, v1, Lorg/apache/ftpserver/command/impl/PASS;->LOG:Lorg/slf4j/Logger;

    const-string v2, "User exceeded the number of allowed failed logins, session will be closed"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Lorg/apache/ftpserver/impl/FtpIoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-interface {v0, v2, v3}, Lorg/apache/mina/core/future/IoFuture;->awaitUninterruptibly(J)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    move/from16 v12, v16

    goto :goto_c

    :cond_b
    :goto_9
    if-nez v16, :cond_c

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->reinitialize()V

    :cond_c
    return-void

    :cond_d
    :try_start_9
    invoke-interface/range {p2 .. p2}, Lorg/apache/ftpserver/ftplet/FtpletContext;->getFileSystemManager()Lorg/apache/ftpserver/ftplet/FileSystemFactory;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/apache/ftpserver/ftplet/FileSystemFactory;->createFileSystemView(Lorg/apache/ftpserver/ftplet/User;)Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->setLogin(Lorg/apache/ftpserver/ftplet/FileSystemView;)V

    invoke-interface {v11, v8}, Lorg/apache/ftpserver/impl/ServerFtpStatistics;->setLogin(Lorg/apache/ftpserver/impl/FtpIoSession;)V

    const-string v6, "PASS"

    const/16 v5, 0xe6

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v7, v14

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    if-eqz v15, :cond_e

    iget-object v0, v1, Lorg/apache/ftpserver/command/impl/PASS;->LOG:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_a
    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_b

    :cond_e
    iget-object v0, v1, Lorg/apache/ftpserver/command/impl/PASS;->LOG:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_a

    :goto_b
    if-nez v16, :cond_f

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->reinitialize()V

    :cond_f
    return-void

    :goto_c
    if-nez v12, :cond_10

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->reinitialize()V

    :cond_10
    throw v0
.end method
