.class public Lorg/apache/ftpserver/listener/ListenerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private blockedAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private blockedSubnets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/mina/filter/firewall/Subnet;",
            ">;"
        }
    .end annotation
.end field

.field private dataConnectionConfig:Lorg/apache/ftpserver/DataConnectionConfiguration;

.field private idleTimeout:I

.field private implicitSsl:Z

.field private ipFilter:Lorg/apache/ftpserver/ipfilter/IpFilter;

.field private port:I

.field private serverAddress:Ljava/lang/String;

.field private ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x15

    iput v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->port:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->implicitSsl:Z

    new-instance v0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;

    invoke-direct {v0}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;-><init>()V

    invoke-virtual {v0}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->createDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->dataConnectionConfig:Lorg/apache/ftpserver/DataConnectionConfiguration;

    const/16 v0, 0x12c

    iput v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->idleTimeout:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->ipFilter:Lorg/apache/ftpserver/ipfilter/IpFilter;

    return-void
.end method

.method public constructor <init>(Lorg/apache/ftpserver/listener/Listener;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x15

    iput v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->port:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->implicitSsl:Z

    new-instance v0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;

    invoke-direct {v0}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;-><init>()V

    invoke-virtual {v0}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->createDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->dataConnectionConfig:Lorg/apache/ftpserver/DataConnectionConfiguration;

    const/16 v0, 0x12c

    iput v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->idleTimeout:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->ipFilter:Lorg/apache/ftpserver/ipfilter/IpFilter;

    invoke-interface {p1}, Lorg/apache/ftpserver/listener/Listener;->getServerAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->serverAddress:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/ftpserver/listener/Listener;->getPort()I

    move-result v0

    iput v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->port:I

    invoke-interface {p1}, Lorg/apache/ftpserver/listener/Listener;->getSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;

    invoke-interface {p1}, Lorg/apache/ftpserver/listener/Listener;->isImplicitSsl()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->implicitSsl:Z

    invoke-interface {p1}, Lorg/apache/ftpserver/listener/Listener;->getDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->dataConnectionConfig:Lorg/apache/ftpserver/DataConnectionConfiguration;

    invoke-interface {p1}, Lorg/apache/ftpserver/listener/Listener;->getIdleTimeout()I

    move-result v0

    iput v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->idleTimeout:I

    invoke-interface {p1}, Lorg/apache/ftpserver/listener/Listener;->getBlockedAddresses()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->blockedAddresses:Ljava/util/List;

    invoke-interface {p1}, Lorg/apache/ftpserver/listener/Listener;->getBlockedSubnets()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->blockedSubnets:Ljava/util/List;

    invoke-interface {p1}, Lorg/apache/ftpserver/listener/Listener;->getIpFilter()Lorg/apache/ftpserver/ipfilter/IpFilter;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->ipFilter:Lorg/apache/ftpserver/ipfilter/IpFilter;

    return-void
.end method


# virtual methods
.method public createListener()Lorg/apache/ftpserver/listener/Listener;
    .locals 11

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->serverAddress:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v8, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->ipFilter:Lorg/apache/ftpserver/ipfilter/IpFilter;

    if-eqz v8, :cond_1

    iget-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->blockedAddresses:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->blockedSubnets:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Usage of IPFilter in combination with blockedAddesses/subnets is not supported. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v9, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->blockedAddresses:Ljava/util/List;

    if-nez v9, :cond_3

    iget-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->blockedSubnets:Ljava/util/List;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lorg/apache/ftpserver/listener/nio/NioListener;

    iget-object v2, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->serverAddress:Ljava/lang/String;

    iget v3, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->port:I

    iget-boolean v4, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->implicitSsl:Z

    iget-object v5, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;

    iget-object v6, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->dataConnectionConfig:Lorg/apache/ftpserver/DataConnectionConfiguration;

    iget v7, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->idleTimeout:I

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/apache/ftpserver/listener/nio/NioListener;-><init>(Ljava/lang/String;IZLorg/apache/ftpserver/ssl/SslConfiguration;Lorg/apache/ftpserver/DataConnectionConfiguration;ILorg/apache/ftpserver/ipfilter/IpFilter;)V

    return-object v0

    :cond_3
    :goto_1
    new-instance v0, Lorg/apache/ftpserver/listener/nio/NioListener;

    iget-object v3, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->serverAddress:Ljava/lang/String;

    iget v4, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->port:I

    iget-boolean v5, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->implicitSsl:Z

    iget-object v6, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;

    iget-object v7, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->dataConnectionConfig:Lorg/apache/ftpserver/DataConnectionConfiguration;

    iget v8, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->idleTimeout:I

    iget-object v10, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->blockedSubnets:Ljava/util/List;

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lorg/apache/ftpserver/listener/nio/NioListener;-><init>(Ljava/lang/String;IZLorg/apache/ftpserver/ssl/SslConfiguration;Lorg/apache/ftpserver/DataConnectionConfiguration;ILjava/util/List;Ljava/util/List;)V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/ftpserver/FtpServerConfigurationException;

    const-string v2, "Unknown host"

    invoke-direct {v1, v2, v0}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBlockedAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->blockedAddresses:Ljava/util/List;

    return-object v0
.end method

.method public getBlockedSubnets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/mina/filter/firewall/Subnet;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->blockedSubnets:Ljava/util/List;

    return-object v0
.end method

.method public getDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->dataConnectionConfig:Lorg/apache/ftpserver/DataConnectionConfiguration;

    return-object v0
.end method

.method public getIdleTimeout()I
    .locals 1

    iget v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->idleTimeout:I

    return v0
.end method

.method public getIpFilter()Lorg/apache/ftpserver/ipfilter/IpFilter;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->ipFilter:Lorg/apache/ftpserver/ipfilter/IpFilter;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->port:I

    return v0
.end method

.method public getServerAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->serverAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;

    return-object v0
.end method

.method public isImplicitSsl()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->implicitSsl:Z

    return v0
.end method

.method public setBlockedAddresses(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->blockedAddresses:Ljava/util/List;

    return-void
.end method

.method public setBlockedSubnets(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/mina/filter/firewall/Subnet;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->blockedSubnets:Ljava/util/List;

    return-void
.end method

.method public setDataConnectionConfiguration(Lorg/apache/ftpserver/DataConnectionConfiguration;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->dataConnectionConfig:Lorg/apache/ftpserver/DataConnectionConfiguration;

    return-void
.end method

.method public setIdleTimeout(I)V
    .locals 0

    iput p1, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->idleTimeout:I

    return-void
.end method

.method public setImplicitSsl(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->implicitSsl:Z

    return-void
.end method

.method public setIpFilter(Lorg/apache/ftpserver/ipfilter/IpFilter;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->ipFilter:Lorg/apache/ftpserver/ipfilter/IpFilter;

    return-void
.end method

.method public setPort(I)V
    .locals 0

    iput p1, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->port:I

    return-void
.end method

.method public setServerAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->serverAddress:Ljava/lang/String;

    return-void
.end method

.method public setSslConfiguration(Lorg/apache/ftpserver/ssl/SslConfiguration;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/listener/ListenerFactory;->ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;

    return-void
.end method
