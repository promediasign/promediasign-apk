.class public Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/DataConnectionConfiguration;


# instance fields
.field private activeEnabled:Z

.field private activeIpCheck:Z

.field private activeLocalAddress:Ljava/lang/String;

.field private activeLocalPort:I

.field private idleTime:I

.field private final implicitSsl:Z

.field private passiveAddress:Ljava/lang/String;

.field private passiveExternalAddress:Ljava/lang/String;

.field private passivePorts:Lorg/apache/ftpserver/impl/PassivePorts;

.field private ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;


# direct methods
.method public constructor <init>(ILorg/apache/ftpserver/ssl/SslConfiguration;ZZLjava/lang/String;ILjava/lang/String;Lorg/apache/ftpserver/impl/PassivePorts;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->idleTime:I

    iput-object p2, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;

    iput-boolean p3, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->activeEnabled:Z

    iput-boolean p4, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->activeIpCheck:Z

    iput-object p5, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->activeLocalAddress:Ljava/lang/String;

    iput p6, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->activeLocalPort:I

    iput-object p7, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->passiveAddress:Ljava/lang/String;

    iput-object p8, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->passivePorts:Lorg/apache/ftpserver/impl/PassivePorts;

    iput-object p9, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->passiveExternalAddress:Ljava/lang/String;

    iput-boolean p10, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->implicitSsl:Z

    return-void
.end method


# virtual methods
.method public getActiveLocalAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->activeLocalAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getActiveLocalPort()I
    .locals 1

    iget v0, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->activeLocalPort:I

    return v0
.end method

.method public getIdleTime()I
    .locals 1

    iget v0, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->idleTime:I

    return v0
.end method

.method public getPassiveAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->passiveAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPassiveExernalAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->passiveExternalAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPassivePorts()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->passivePorts:Lorg/apache/ftpserver/impl/PassivePorts;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/PassivePorts;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSslConfiguration()Lorg/apache/ftpserver/ssl/SslConfiguration;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->ssl:Lorg/apache/ftpserver/ssl/SslConfiguration;

    return-object v0
.end method

.method public isActiveEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->activeEnabled:Z

    return v0
.end method

.method public isActiveIpCheck()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->activeIpCheck:Z

    return v0
.end method

.method public isImplicitSsl()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->implicitSsl:Z

    return v0
.end method

.method public declared-synchronized releasePassivePort(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->passivePorts:Lorg/apache/ftpserver/impl/PassivePorts;

    invoke-virtual {v0, p1}, Lorg/apache/ftpserver/impl/PassivePorts;->releasePort(I)V
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
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultDataConnectionConfiguration;->passivePorts:Lorg/apache/ftpserver/impl/PassivePorts;

    invoke-virtual {v0}, Lorg/apache/ftpserver/impl/PassivePorts;->reserveNextPort()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
