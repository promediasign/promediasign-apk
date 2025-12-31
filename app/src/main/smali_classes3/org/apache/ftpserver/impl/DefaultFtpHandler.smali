.class public Lorg/apache/ftpserver/impl/DefaultFtpHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/impl/FtpHandler;


# static fields
.field private static final NON_AUTHENTICATED_COMMANDS:[Ljava/lang/String;


# instance fields
.field private final LOG:Lorg/slf4j/Logger;

.field private context:Lorg/apache/ftpserver/impl/FtpServerContext;

.field private listener:Lorg/apache/ftpserver/listener/Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v4, "PROT"

    const-string v5, "PBSZ"

    const-string v0, "USER"

    const-string v1, "PASS"

    const-string v2, "AUTH"

    const-string v3, "QUIT"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->NON_AUTHENTICATED_COMMANDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method private isCommandOkWithoutAuthentication(Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->NON_AUTHENTICATED_COMMANDS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/ftpserver/impl/FtpIoSession;Ljava/lang/Throwable;)V
    .locals 5

    instance-of v0, p2, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/nio/charset/MalformedInputException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    check-cast p2, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    invoke-virtual {p2}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;->getHexdump()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Client sent command that could not be decoded: {}"

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;

    const/16 v0, 0x1f5

    const-string v1, "Invalid character in command"

    invoke-direct {p2, v0, v1}, Lorg/apache/ftpserver/ftplet/DefaultFtpReply;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    goto :goto_1

    :cond_0
    instance-of v0, p2, Lorg/apache/mina/core/write/WriteToClosedSessionException;

    const-wide/16 v1, 0x2710

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lorg/apache/mina/core/write/WriteToClosedSessionException;

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Client closed connection before all replies could be sent, last reply was {}"

    invoke-virtual {p2}, Lorg/apache/mina/core/write/WriteException;->getRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object p2

    invoke-interface {v0, v4, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p1, v3}, Lorg/apache/ftpserver/impl/FtpIoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object p1

    invoke-interface {p1, v1, v2}, Lorg/apache/mina/core/future/IoFuture;->awaitUninterruptibly(J)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Exception caught, closing session"

    invoke-interface {v0, v4, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public init(Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/listener/Listener;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    iput-object p2, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->listener:Lorg/apache/ftpserver/listener/Listener;

    return-void
.end method

.method public messageReceived(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 13

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->updateLastAccessTime()V

    invoke-interface {p2}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getCommand()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-interface {v1}, Lorg/apache/ftpserver/impl/FtpServerContext;->getCommandFactory()Lorg/apache/ftpserver/command/CommandFactory;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/ftpserver/command/CommandFactory;->getCommand(Ljava/lang/String;)Lorg/apache/ftpserver/command/Command;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->isLoggedIn()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->isCommandOkWithoutAuthentication(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v4, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    const-string v6, "permission"

    const/4 v7, 0x0

    const/16 v5, 0x212

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/FtpServerContext;->getFtpletContainer()Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFtpletSession()Lorg/apache/ftpserver/ftplet/FtpSession;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Lorg/apache/ftpserver/ftplet/Ftplet;->beforeCommand(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    iget-object v3, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v4, "Ftplet container threw exception"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, Lorg/apache/ftpserver/ftplet/FtpletResult;->DISCONNECT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    :goto_0
    sget-object v3, Lorg/apache/ftpserver/ftplet/FtpletResult;->DISCONNECT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    const-wide/16 v4, 0x2710

    const/4 v6, 0x0

    if-ne v2, v3, :cond_1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Ftplet returned DISCONNECT, session will be closed"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Lorg/apache/ftpserver/impl/FtpIoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    invoke-interface {v0, v4, v5}, Lorg/apache/mina/core/future/IoFuture;->awaitUninterruptibly(J)Z

    return-void

    :cond_1
    sget-object v3, Lorg/apache/ftpserver/ftplet/FtpletResult;->SKIP:Lorg/apache/ftpserver/ftplet/FtpletResult;

    if-eq v2, v3, :cond_3

    if-eqz v1, :cond_2

    monitor-enter p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v2, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-interface {v1, p1, v2, p2}, Lorg/apache/ftpserver/command/Command;->execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V

    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_2
    iget-object v9, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    const-string v11, "not.implemented"

    const/4 v12, 0x0

    const/16 v10, 0x1f6

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v7 .. v12}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    :try_start_5
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFtpletSession()Lorg/apache/ftpserver/ftplet/FtpSession;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getLastReply()Lorg/apache/ftpserver/ftplet/FtpReply;

    move-result-object v2

    invoke-interface {v0, v1, p2, v2}, Lorg/apache/ftpserver/ftplet/Ftplet;->afterCommand(Lorg/apache/ftpserver/ftplet/FtpSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/ftplet/FtpReply;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_6
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Ftplet container threw exception"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lorg/apache/ftpserver/ftplet/FtpletResult;->DISCONNECT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    :goto_2
    sget-object v1, Lorg/apache/ftpserver/ftplet/FtpletResult;->DISCONNECT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Ftplet returned DISCONNECT, session will be closed"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Lorg/apache/ftpserver/impl/FtpIoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object v0

    invoke-interface {v0, v4, v5}, Lorg/apache/mina/core/future/IoFuture;->awaitUninterruptibly(J)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-void

    :goto_3
    :try_start_7
    iget-object v3, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v4, 0x226

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    :catch_3
    nop

    :goto_4
    instance-of p1, v0, Ljava/io/IOException;

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string p2, "RequestHandler.service()"

    invoke-interface {p1, p2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void

    :cond_4
    check-cast v0, Ljava/io/IOException;

    throw v0
.end method

.method public messageSent(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpReply;)V
    .locals 0

    return-void
.end method

.method public sessionClosed(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Closing session"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/FtpServerContext;->getFtpletContainer()Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFtpletSession()Lorg/apache/ftpserver/ftplet/FtpSession;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ftpserver/ftplet/Ftplet;->onDisconnect(Lorg/apache/ftpserver/ftplet/FtpSession;)Lorg/apache/ftpserver/ftplet/FtpletResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Ftplet threw an exception on disconnect"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/DataConnectionFactory;->closeDataConnection()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Data connection threw an exception on disconnect"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFileSystemView()Lorg/apache/ftpserver/ftplet/FileSystemView;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_2
    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FileSystemView;->dispose()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v2, "FileSystemView threw an exception on disposal"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpletContext;->getFtpStatistics()Lorg/apache/ftpserver/ftplet/FtpStatistics;

    move-result-object v0

    check-cast v0, Lorg/apache/ftpserver/impl/ServerFtpStatistics;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lorg/apache/ftpserver/impl/ServerFtpStatistics;->setLogout(Lorg/apache/ftpserver/impl/FtpIoSession;)V

    invoke-interface {v0, p1}, Lorg/apache/ftpserver/impl/ServerFtpStatistics;->setCloseConnection(Lorg/apache/ftpserver/impl/FtpIoSession;)V

    iget-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Statistics login and connection count decreased due to session close"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    iget-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Statistics not available in session, can not decrease login and connection count"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_3
    iget-object p1, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Session closed"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public sessionCreated(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->listener:Lorg/apache/ftpserver/listener/Listener;

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->setListener(Lorg/apache/ftpserver/listener/Listener;)V

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-interface {v0}, Lorg/apache/ftpserver/ftplet/FtpletContext;->getFtpStatistics()Lorg/apache/ftpserver/ftplet/FtpStatistics;

    move-result-object v0

    check-cast v0, Lorg/apache/ftpserver/impl/ServerFtpStatistics;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/apache/ftpserver/impl/ServerFtpStatistics;->setOpenConnection(Lorg/apache/ftpserver/impl/FtpIoSession;)V

    :cond_0
    return-void
.end method

.method public sessionIdle(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/mina/core/session/IdleStatus;)V
    .locals 2

    iget-object p2, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v0, "Session idle, closing"

    invoke-interface {p2, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object p1

    const-wide/16 v0, 0x2710

    invoke-interface {p1, v0, v1}, Lorg/apache/mina/core/future/IoFuture;->awaitUninterruptibly(J)Z

    return-void
.end method

.method public sessionOpened(Lorg/apache/ftpserver/impl/FtpIoSession;)V
    .locals 8

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    invoke-interface {v0}, Lorg/apache/ftpserver/impl/FtpServerContext;->getFtpletContainer()Lorg/apache/ftpserver/ftpletcontainer/FtpletContainer;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFtpletSession()Lorg/apache/ftpserver/ftplet/FtpSession;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ftpserver/ftplet/Ftplet;->onConnect(Lorg/apache/ftpserver/ftplet/FtpSession;)Lorg/apache/ftpserver/ftplet/FtpletResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Ftplet threw exception"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lorg/apache/ftpserver/ftplet/FtpletResult;->DISCONNECT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    :goto_0
    sget-object v1, Lorg/apache/ftpserver/ftplet/FtpletResult;->DISCONNECT:Lorg/apache/ftpserver/ftplet/FtpletResult;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Ftplet returned DISCONNECT, session will be closed"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    move-result-object p1

    const-wide/16 v0, 0x2710

    invoke-interface {p1, v0, v1}, Lorg/apache/mina/core/future/IoFuture;->awaitUninterruptibly(J)Z

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->updateLastAccessTime()V

    iget-object v4, p0, Lorg/apache/ftpserver/impl/DefaultFtpHandler;->context:Lorg/apache/ftpserver/impl/FtpServerContext;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/16 v5, 0xdc

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    :goto_1
    return-void
.end method
