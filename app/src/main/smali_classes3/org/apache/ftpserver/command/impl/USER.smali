.class public Lorg/apache/ftpserver/command/impl/USER;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "SourceFile"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    const-class v0, Lorg/apache/ftpserver/command/impl/USER;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/USER;->LOG:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 15

    move-object v1, p0

    move-object/from16 v8, p1

    const-string v9, "User failed to login, session will be closed"

    invoke-interface/range {p2 .. p2}, Lorg/apache/ftpserver/ftplet/FtpletContext;->getFtpStatistics()Lorg/apache/ftpserver/ftplet/FtpStatistics;

    move-result-object v0

    check-cast v0, Lorg/apache/ftpserver/impl/ServerFtpStatistics;

    const-wide/16 v10, 0x2710

    const/4 v12, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    invoke-interface/range {p3 .. p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v6, "USER"

    const/4 v7, 0x0

    const/16 v5, 0x1f5

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lorg/apache/ftpserver/command/impl/USER;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v0, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Lorg/apache/ftpserver/impl/FtpIoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    invoke-interface {v0, v10, v11}, Lorg/apache/mina/core/future/IoFuture;->awaitUninterruptibly(J)Z

    return-void

    :catchall_0
    move-exception v0

    const/4 v13, 0x0

    goto/16 :goto_6

    :cond_0
    :try_start_1
    const-string v2, "userName"

    invoke-static {v8, v2, v7}, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->setProperty(Lorg/apache/mina/core/session/IoSession;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getUser()Lorg/apache/ftpserver/ftplet/User;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->isLoggedIn()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Lorg/apache/ftpserver/ftplet/User;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v6, "USER"

    const/4 v7, 0x0

    const/16 v5, 0xe6

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    goto :goto_0

    :cond_1
    const-string v6, "USER.invalid"

    const/4 v7, 0x0

    const/16 v5, 0x212

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v1, Lorg/apache/ftpserver/command/impl/USER;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v0, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Lorg/apache/ftpserver/impl/FtpIoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    invoke-interface {v0, v10, v11}, Lorg/apache/mina/core/future/IoFuture;->awaitUninterruptibly(J)Z

    :goto_0
    return-void

    :cond_2
    :try_start_2
    const-string v2, "anonymous"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {p2 .. p2}, Lorg/apache/ftpserver/impl/FtpServerContext;->getConnectionConfig()Lorg/apache/ftpserver/ConnectionConfig;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ftpserver/ConnectionConfig;->isAnonymousLoginEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v6, "USER.anonymous"

    const/4 v7, 0x0

    const/16 v5, 0x212

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, v1, Lorg/apache/ftpserver/command/impl/USER;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v0, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Lorg/apache/ftpserver/impl/FtpIoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    invoke-interface {v0, v10, v11}, Lorg/apache/mina/core/future/IoFuture;->awaitUninterruptibly(J)Z

    return-void

    :cond_3
    :try_start_3
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getCurrentAnonymousLoginNumber()I

    move-result v3

    invoke-interface/range {p2 .. p2}, Lorg/apache/ftpserver/impl/FtpServerContext;->getConnectionConfig()Lorg/apache/ftpserver/ConnectionConfig;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ftpserver/ConnectionConfig;->getMaxAnonymousLogins()I

    move-result v4

    if-nez v4, :cond_4

    iget-object v5, v1, Lorg/apache/ftpserver/command/impl/USER;->LOG:Lorg/slf4j/Logger;

    const-string v6, "Currently {} anonymous users logged in, unlimited allowed"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v5, v6, v13}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-object v5, v1, Lorg/apache/ftpserver/command/impl/USER;->LOG:Lorg/slf4j/Logger;

    const-string v6, "Currently {} out of {} anonymous users logged in"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v5, v6, v13, v14}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    if-eqz v2, :cond_5

    if-lt v3, v4, :cond_5

    iget-object v0, v1, Lorg/apache/ftpserver/command/impl/USER;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Too many anonymous users logged in, user will be disconnected"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const-string v6, "USER.anonymous"

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

    iget-object v0, v1, Lorg/apache/ftpserver/command/impl/USER;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v0, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Lorg/apache/ftpserver/impl/FtpIoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    invoke-interface {v0, v10, v11}, Lorg/apache/mina/core/future/IoFuture;->awaitUninterruptibly(J)Z

    return-void

    :cond_5
    :try_start_4
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getCurrentLoginNumber()I

    move-result v3

    invoke-interface/range {p2 .. p2}, Lorg/apache/ftpserver/impl/FtpServerContext;->getConnectionConfig()Lorg/apache/ftpserver/ConnectionConfig;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ftpserver/ConnectionConfig;->getMaxLogins()I

    move-result v4

    if-nez v4, :cond_6

    iget-object v5, v1, Lorg/apache/ftpserver/command/impl/USER;->LOG:Lorg/slf4j/Logger;

    const-string v6, "Currently {} users logged in, unlimited allowed"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v5, v6, v13}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    iget-object v5, v1, Lorg/apache/ftpserver/command/impl/USER;->LOG:Lorg/slf4j/Logger;

    const-string v6, "Currently {} out of {} users logged in"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v5, v6, v13, v14}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    if-eqz v4, :cond_7

    if-lt v3, v4, :cond_7

    iget-object v0, v1, Lorg/apache/ftpserver/command/impl/USER;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Too many users logged in, user will be disconnected"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const-string v6, "USER.login"

    const/4 v7, 0x0

    const/16 v5, 0x1a5

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, v1, Lorg/apache/ftpserver/command/impl/USER;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v0, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Lorg/apache/ftpserver/impl/FtpIoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    invoke-interface {v0, v10, v11}, Lorg/apache/mina/core/future/IoFuture;->awaitUninterruptibly(J)Z

    return-void

    :cond_7
    :try_start_5
    invoke-interface/range {p2 .. p2}, Lorg/apache/ftpserver/ftplet/FtpletContext;->getUserManager()Lorg/apache/ftpserver/ftplet/UserManager;

    move-result-object v3

    invoke-interface {v3, v7}, Lorg/apache/ftpserver/ftplet/UserManager;->getUserByName(Ljava/lang/String;)Lorg/apache/ftpserver/ftplet/User;

    move-result-object v3

    const/4 v13, 0x1

    if-eqz v3, :cond_9

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v4

    instance-of v4, v4, Ljava/net/InetSocketAddress;

    if-eqz v4, :cond_8

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v4

    check-cast v4, Ljava/net/InetSocketAddress;

    invoke-virtual {v4}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    :goto_3
    new-instance v5, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;

    invoke-interface {v0, v3}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getCurrentUserLoginNumber(Lorg/apache/ftpserver/ftplet/User;)I

    move-result v6

    add-int/2addr v6, v13

    invoke-interface {v0, v3, v4}, Lorg/apache/ftpserver/ftplet/FtpStatistics;->getCurrentUserLoginNumber(Lorg/apache/ftpserver/ftplet/User;Ljava/net/InetAddress;)I

    move-result v0

    add-int/2addr v0, v13

    invoke-direct {v5, v6, v0}, Lorg/apache/ftpserver/usermanager/impl/ConcurrentLoginRequest;-><init>(II)V

    invoke-interface {v3, v5}, Lorg/apache/ftpserver/ftplet/User;->authorize(Lorg/apache/ftpserver/ftplet/AuthorizationRequest;)Lorg/apache/ftpserver/ftplet/AuthorizationRequest;

    move-result-object v0

    if-nez v0, :cond_9

    iget-object v0, v1, Lorg/apache/ftpserver/command/impl/USER;->LOG:Lorg/slf4j/Logger;

    const-string v2, "User logged in too many sessions, user will be disconnected"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const-string v6, "USER.login"

    const/4 v7, 0x0

    const/16 v5, 0x1a5

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, v1, Lorg/apache/ftpserver/command/impl/USER;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v0, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Lorg/apache/ftpserver/impl/FtpIoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    invoke-interface {v0, v10, v11}, Lorg/apache/mina/core/future/IoFuture;->awaitUninterruptibly(J)Z

    return-void

    :cond_9
    :try_start_6
    invoke-virtual {v8, v7}, Lorg/apache/ftpserver/impl/FtpIoSession;->setUserArgument(Ljava/lang/String;)V

    if-eqz v2, :cond_a

    const-string v6, "USER.anonymous"

    const/16 v5, 0x14b

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    :goto_4
    invoke-virtual {v8, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :cond_a
    const-string v6, "USER"

    const/16 v5, 0x14b

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :goto_5
    return-void

    :goto_6
    if-nez v13, :cond_b

    iget-object v2, v1, Lorg/apache/ftpserver/command/impl/USER;->LOG:Lorg/slf4j/Logger;

    invoke-interface {v2, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Lorg/apache/ftpserver/impl/FtpIoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v2

    invoke-interface {v2, v10, v11}, Lorg/apache/mina/core/future/IoFuture;->awaitUninterruptibly(J)Z

    :cond_b
    throw v0
.end method
