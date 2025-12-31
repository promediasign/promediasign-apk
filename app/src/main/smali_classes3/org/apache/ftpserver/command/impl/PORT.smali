.class public Lorg/apache/ftpserver/command/impl/PORT;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "SourceFile"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    const-class v0, Lorg/apache/ftpserver/command/impl/PORT;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/PORT;->LOG:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 9

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    invoke-interface {p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->hasArgument()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v5, "PORT"

    const/4 v6, 0x0

    const/16 v4, 0x1f5

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/listener/Listener;->getDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/DataConnectionConfiguration;->isActiveEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v6, "PORT.disabled"

    :goto_1
    const/4 v7, 0x0

    const/16 v5, 0x1f5

    :goto_2
    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ftpserver/util/SocketAddressEncoder;->decode(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2
    :try_end_0
    .catch Lorg/apache/ftpserver/util/IllegalInetAddressException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/ftpserver/util/IllegalPortException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lorg/apache/ftpserver/DataConnectionConfiguration;->isActiveIpCheck()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v6, "PORT.mismatch"

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    invoke-interface {v0, v1}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->initActiveDataConnection(Ljava/net/InetSocketAddress;)V

    const-string v6, "PORT"

    const/4 v7, 0x0

    const/16 v5, 0xc8

    goto :goto_2

    :cond_3
    :try_start_1
    new-instance v0, Lorg/apache/ftpserver/util/IllegalPortException;

    const-string v1, "PORT port must not be 0"

    invoke-direct {v0, v1}, Lorg/apache/ftpserver/util/IllegalPortException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/apache/ftpserver/util/IllegalInetAddressException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/ftpserver/util/IllegalPortException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_5

    :goto_3
    iget-object v1, p0, Lorg/apache/ftpserver/command/impl/PORT;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Unknown host"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v7, "PORT.host"

    :goto_4
    const/4 v8, 0x0

    const/16 v6, 0x1f5

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2

    goto :goto_0

    :goto_5
    iget-object v1, p0, Lorg/apache/ftpserver/command/impl/PORT;->LOG:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid data port: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v7, "PORT.invalid"

    goto :goto_4

    :catch_2
    const-string v4, "PORT"

    const/4 v5, 0x0

    const/16 v3, 0x1f5

    move-object v0, p1

    move-object v1, p3

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2

    goto/16 :goto_0
.end method
