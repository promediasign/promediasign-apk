.class public Lorg/apache/ftpserver/command/impl/AUTH;
.super Lorg/apache/ftpserver/command/AbstractCommand;
.source "SourceFile"


# static fields
.field private static final SSL_SESSION_FILTER_NAME:Ljava/lang/String; = "sslSessionFilter"


# instance fields
.field private final LOG:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/ftpserver/command/AbstractCommand;-><init>()V

    const-class v0, Lorg/apache/ftpserver/command/impl/AUTH;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/AUTH;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method private secureSession(Lorg/apache/ftpserver/impl/FtpIoSession;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/ftpserver/listener/Listener;->getSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;

    move-result-object p2

    if-eqz p2, :cond_3

    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->DISABLE_ENCRYPTION_ONCE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p1, v0}, Lorg/apache/ftpserver/impl/FtpIoSession;->setAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-interface {p2}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/mina/filter/ssl/SslFilter;-><init>(Ljavax/net/ssl/SSLContext;)V

    invoke-interface {p2}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getClientAuth()Lorg/apache/ftpserver/ssl/ClientAuth;

    move-result-object v1

    sget-object v2, Lorg/apache/ftpserver/ssl/ClientAuth;->NEED:Lorg/apache/ftpserver/ssl/ClientAuth;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v3}, Lorg/apache/mina/filter/ssl/SslFilter;->setNeedClientAuth(Z)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getClientAuth()Lorg/apache/ftpserver/ssl/ClientAuth;

    move-result-object v1

    sget-object v2, Lorg/apache/ftpserver/ssl/ClientAuth;->WANT:Lorg/apache/ftpserver/ssl/ClientAuth;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0, v3}, Lorg/apache/mina/filter/ssl/SslFilter;->setWantClientAuth(Z)V

    :cond_1
    :goto_0
    invoke-interface {p2}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Lorg/apache/ftpserver/ssl/SslConfiguration;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object p1

    const-string p2, "sslSessionFilter"

    invoke-interface {p1, p2, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->addFirst(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    return-void

    :cond_3
    new-instance p1, Lorg/apache/ftpserver/ftplet/FtpException;

    const-string p2, "Socket factory SSL not configured"

    invoke-direct {p1, p2}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public execute(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/impl/FtpServerContext;Lorg/apache/ftpserver/ftplet/FtpRequest;)V
    .locals 10

    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->resetState()V

    invoke-interface {p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->hasArgument()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v5, "AUTH"

    const/4 v6, 0x0

    const/16 v4, 0x1f5

    :goto_0
    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getListener()Lorg/apache/ftpserver/listener/Listener;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ftpserver/listener/Listener;->getSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v5, "AUTH"

    const/4 v6, 0x0

    const/16 v4, 0x1af

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/ftpserver/impl/FtpIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    const-class v1, Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->contains(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v5, "AUTH"

    const/4 v6, 0x0

    const/16 v4, 0x216

    goto :goto_0

    :cond_2
    invoke-interface {p3}, Lorg/apache/ftpserver/ftplet/FtpRequest;->getArgument()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SSL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "AUTH.execute()"

    if-eqz v2, :cond_3

    :try_start_0
    invoke-direct {p0, p1, v1}, Lorg/apache/ftpserver/command/impl/AUTH;->secureSession(Lorg/apache/ftpserver/impl/FtpIoSession;Ljava/lang/String;)V

    const-string v8, "AUTH.SSL"

    const/4 v9, 0x0

    const/16 v7, 0xea

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-static/range {v4 .. v9}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_0
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :goto_1
    iget-object p2, p0, Lorg/apache/ftpserver/command/impl/AUTH;->LOG:Lorg/slf4j/Logger;

    invoke-interface {p2, v3, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Lorg/apache/ftpserver/ftplet/FtpException;

    invoke-direct {p2, v3, p1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_2
    throw p1

    :cond_3
    const-string v1, "TLS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_1
    invoke-direct {p0, p1, v1}, Lorg/apache/ftpserver/command/impl/AUTH;->secureSession(Lorg/apache/ftpserver/impl/FtpIoSession;Ljava/lang/String;)V

    const-string v8, "AUTH.TLS"

    const/4 v9, 0x0

    const/16 v7, 0xea

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-static/range {v4 .. v9}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;
    :try_end_1
    .catch Lorg/apache/ftpserver/ftplet/FtpException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    goto :goto_4

    :goto_3
    iget-object p2, p0, Lorg/apache/ftpserver/command/impl/AUTH;->LOG:Lorg/slf4j/Logger;

    invoke-interface {p2, v3, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Lorg/apache/ftpserver/ftplet/FtpException;

    invoke-direct {p2, v3, p1}, Lorg/apache/ftpserver/ftplet/FtpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_4
    throw p1

    :cond_4
    const-string v4, "AUTH"

    const/4 v5, 0x0

    const/16 v3, 0x1f6

    move-object v0, p1

    move-object v1, p3

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/ftpserver/impl/LocalizedFtpReply;->translate(Lorg/apache/ftpserver/impl/FtpIoSession;Lorg/apache/ftpserver/ftplet/FtpRequest;Lorg/apache/ftpserver/impl/FtpServerContext;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/ftpserver/impl/LocalizedFtpReply;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/ftpserver/impl/FtpIoSession;->write(Ljava/lang/Object;)Lorg/apache/mina/core/future/WriteFuture;

    :goto_5
    return-void
.end method
