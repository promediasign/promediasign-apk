.class public Lorg/apache/ftpserver/DataConnectionConfigurationFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private activeEnabled:Z

.field private activeIpCheck:Z

.field private activeLocalAddress:Ljava/lang/String;

.field private activeLocalPort:I

.field private idleTime:I

.field private implicitSsl:Z

.field private log:Lorg/slf4j/Logger;

.field private passiveAddress:Ljava/lang/String;

.field private passiveExternalAddress:Ljava/lang/String;

.field private passivePorts:Lorg/apache/ftpserver/impl/PassivePorts;

.field private ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->log:Lorg/slf4j/Logger;

    const/16 v0, 0x12c

    iput v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->idleTime:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->activeEnabled:Z

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->activeLocalPort:I

    iput-boolean v1, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->activeIpCheck:Z

    new-instance v1, Lorg/apache/ftpserver/impl/PassivePorts;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/ftpserver/impl/PassivePorts;-><init>(Ljava/util/Set;Z)V

    iput-object v1, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passivePorts:Lorg/apache/ftpserver/impl/PassivePorts;

    return-void
.end method

.method private checkValidAddresses()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passiveAddress:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    iget-object v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passiveExternalAddress:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/ftpserver/FtpServerConfigurationException;

    const-string v2, "Unknown host"

    invoke-direct {v1, v2, v0}, Lorg/apache/ftpserver/FtpServerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public createDataConnectionConfiguration()Lorg/apache/ftpserver/DataConnectionConfiguration;
    .locals 12

    invoke-direct {p0}, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->checkValidAddresses()V

    new-instance v11, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;

    iget v1, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->idleTime:I

    iget-object v2, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;

    iget-boolean v3, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->activeEnabled:Z

    iget-boolean v4, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->activeIpCheck:Z

    iget-object v5, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->activeLocalAddress:Ljava/lang/String;

    iget v6, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->activeLocalPort:I

    iget-object v7, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passiveAddress:Ljava/lang/String;

    iget-object v8, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passivePorts:Lorg/apache/ftpserver/impl/PassivePorts;

    iget-object v9, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passiveExternalAddress:Ljava/lang/String;

    iget-boolean v10, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->implicitSsl:Z

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;-><init>(ILorg/apache/ftpserver/ssl/SslConfiguration;ZZLjava/lang/String;ILjava/lang/String;Lorg/apache/ftpserver/impl/PassivePorts;Ljava/lang/String;Z)V

    return-object v11
.end method

.method public getActiveLocalAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->activeLocalAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getActiveLocalPort()I
    .locals 1

    iget v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->activeLocalPort:I

    return v0
.end method

.method public getIdleTime()I
    .locals 1

    iget v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->idleTime:I

    return v0
.end method

.method public getPassiveAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passiveAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPassiveExternalAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passiveExternalAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPassivePorts()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passivePorts:Lorg/apache/ftpserver/impl/PassivePorts;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/PassivePorts;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;

    return-object v0
.end method

.method public isActiveEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->activeEnabled:Z

    return v0
.end method

.method public isActiveIpCheck()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->activeIpCheck:Z

    return v0
.end method

.method public isImplicitSsl()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->implicitSsl:Z

    return v0
.end method

.method public declared-synchronized releasePassivePort(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passivePorts:Lorg/apache/ftpserver/impl/PassivePorts;

    invoke-virtual {v0, p1}, Lorg/apache/ftpserver/impl/PassivePorts;->releasePort(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized requestPassivePort()I
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, -0x1

    :cond_0
    :goto_0
    if-ne v3, v1, :cond_1

    add-int/2addr v2, v1

    if-ltz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v3, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passivePorts:Lorg/apache/ftpserver/impl/PassivePorts;

    invoke-virtual {v3}, Lorg/apache/ftpserver/impl/PassivePorts;->reserveNextPort()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v1, :cond_0

    :try_start_1
    iget-object v4, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->log:Lorg/slf4j/Logger;

    const-string v5, "Out of passive ports, waiting for one to be released. Might be stuck"

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    :cond_1
    monitor-exit p0

    return v3

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public setActiveEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->activeEnabled:Z

    return-void
.end method

.method public setActiveIpCheck(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->activeIpCheck:Z

    return-void
.end method

.method public setActiveLocalAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->activeLocalAddress:Ljava/lang/String;

    return-void
.end method

.method public setActiveLocalPort(I)V
    .locals 0

    iput p1, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->activeLocalPort:I

    return-void
.end method

.method public setIdleTime(I)V
    .locals 0

    iput p1, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->idleTime:I

    return-void
.end method

.method public setImplicitSsl(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->implicitSsl:Z

    return-void
.end method

.method public setPassiveAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passiveAddress:Ljava/lang/String;

    return-void
.end method

.method public setPassiveExternalAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passiveExternalAddress:Ljava/lang/String;

    return-void
.end method

.method public setPassivePorts(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/apache/ftpserver/impl/PassivePorts;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/apache/ftpserver/impl/PassivePorts;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->passivePorts:Lorg/apache/ftpserver/impl/PassivePorts;

    return-void
.end method

.method public setSslConfiguration(Lorg/apache/ftpserver/ssl/SslConfiguration;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/DataConnectionConfigurationFactory;->ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;

    return-void
.end method
