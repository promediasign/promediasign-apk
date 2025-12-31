.class public Lorg/apache/ftpserver/command/impl/PASV;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "SourceFile"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    const-class v0, Lorg/apache/ftpserver/command/impl/PASV;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/PASV;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method private resolveAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/ftpserver/DataConnectionException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/ftpserver/DataConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 9

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getDataConnection()Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ftpserver/listener/Listener;->getDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ftpserver/DataConnectionConfiguration;->getPassiveExernalAddress()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-interface {v0}, Lorg/apache/ftpserver/impl/ServerDataConnectionFactory;->initPassiveDataConnection()Ljava/net/InetSocketAddress;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lorg/apache/ftpserver/command/impl/PASV;->resolveAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-direct {v2, v1, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-static {v2}, Lorg/apache/ftpserver/util/SocketAddressEncoder;->encode(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "PASV"

    const/16 v6, 0xe3

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catch Lorg/apache/ftpserver/DataConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    iget-object v1, p0, Lorg/apache/ftpserver/command/impl/PASV;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Failed to open passive data connection"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v7, "PASV"

    const/4 v8, 0x0

    const/16 v6, 0x1a9

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    return-void
.end method
