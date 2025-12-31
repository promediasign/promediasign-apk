.class public abstract Lorg/apache/mina/core/service/AbstractIoConnector;
.super Lorg/apache/mina/core/service/AbstractIoService;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/core/service/IoConnector;


# instance fields
.field private connectTimeoutCheckInterval:J

.field private connectTimeoutInMillis:J

.field private defaultRemoteAddress:Ljava/net/SocketAddress;


# direct methods
.method public constructor <init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/service/AbstractIoService;-><init>(Lorg/apache/mina/core/session/IoSessionConfig;Ljava/util/concurrent/Executor;)V

    const-wide/16 p1, 0x32

    iput-wide p1, p0, Lorg/apache/mina/core/service/AbstractIoConnector;->connectTimeoutCheckInterval:J

    const-wide/32 p1, 0xea60

    iput-wide p1, p0, Lorg/apache/mina/core/service/AbstractIoConnector;->connectTimeoutInMillis:J

    return-void
.end method


# virtual methods
.method public final connect()Lorg/apache/mina/core/future/ConnectFuture;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoConnector;->getDefaultRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lorg/apache/mina/core/service/AbstractIoConnector;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "defaultRemoteAddress is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final connect(Ljava/net/SocketAddress;)Lorg/apache/mina/core/future/ConnectFuture;
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/apache/mina/core/service/AbstractIoConnector;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object p1

    return-object p1
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/mina/core/future/ConnectFuture;
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/mina/core/service/AbstractIoConnector;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object p1

    return-object p1
.end method

.method public final connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Ljava/net/SocketAddress;",
            "Lorg/apache/mina/core/session/IoSessionInitializer<",
            "+",
            "Lorg/apache/mina/core/future/ConnectFuture;",
            ">;)",
            "Lorg/apache/mina/core/future/ConnectFuture;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->isDisposing()Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p1, :cond_5

    invoke-interface {p0}, Lorg/apache/mina/core/service/IoService;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->getAddressType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, ")"

    const-string v2, " (expected: "

    if-eqz v0, :cond_4

    if-eqz p2, :cond_1

    invoke-interface {p0}, Lorg/apache/mina/core/service/IoService;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->getAddressType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "localAddress type: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/apache/mina/core/service/IoService;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/mina/core/service/TransportMetadata;->getAddressType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getSessionConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->isUseReadOperation()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/apache/mina/core/service/AbstractIoConnector$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/core/service/AbstractIoConnector$1;-><init>(Lorg/apache/mina/core/service/AbstractIoConnector;)V

    invoke-virtual {p0, v0}, Lorg/apache/mina/core/service/AbstractIoService;->setHandler(Lorg/apache/mina/core/service/IoHandler;)V

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "handler is not set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/mina/core/service/AbstractIoConnector;->connect0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "remoteAddress type: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/apache/mina/core/service/IoService;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/mina/core/service/TransportMetadata;->getAddressType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "remoteAddress"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The connector has been disposed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public connect(Ljava/net/SocketAddress;Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Lorg/apache/mina/core/session/IoSessionInitializer<",
            "+",
            "Lorg/apache/mina/core/future/ConnectFuture;",
            ">;)",
            "Lorg/apache/mina/core/future/ConnectFuture;"
        }
    .end annotation

    .line 5
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/mina/core/service/AbstractIoConnector;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object p1

    return-object p1
.end method

.method public connect(Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSessionInitializer<",
            "+",
            "Lorg/apache/mina/core/future/ConnectFuture;",
            ">;)",
            "Lorg/apache/mina/core/future/ConnectFuture;"
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoConnector;->getDefaultRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/mina/core/service/AbstractIoConnector;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "defaultRemoteAddress is not set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract connect0(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lorg/apache/mina/core/session/IoSessionInitializer;)Lorg/apache/mina/core/future/ConnectFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            "Ljava/net/SocketAddress;",
            "Lorg/apache/mina/core/session/IoSessionInitializer<",
            "+",
            "Lorg/apache/mina/core/future/ConnectFuture;",
            ">;)",
            "Lorg/apache/mina/core/future/ConnectFuture;"
        }
    .end annotation
.end method

.method public final finishSessionInitialization0(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/future/IoFuture;)V
    .locals 1

    new-instance v0, Lorg/apache/mina/core/service/AbstractIoConnector$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/mina/core/service/AbstractIoConnector$2;-><init>(Lorg/apache/mina/core/service/AbstractIoConnector;Lorg/apache/mina/core/session/IoSession;)V

    invoke-interface {p2, v0}, Lorg/apache/mina/core/future/IoFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/IoFuture;

    return-void
.end method

.method public final getConnectTimeout()I
    .locals 2

    iget-wide v0, p0, Lorg/apache/mina/core/service/AbstractIoConnector;->connectTimeoutInMillis:J

    long-to-int v1, v0

    div-int/lit16 v1, v1, 0x3e8

    return v1
.end method

.method public getConnectTimeoutCheckInterval()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/mina/core/service/AbstractIoConnector;->connectTimeoutCheckInterval:J

    return-wide v0
.end method

.method public final getConnectTimeoutMillis()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/mina/core/service/AbstractIoConnector;->connectTimeoutInMillis:J

    return-wide v0
.end method

.method public getDefaultRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/core/service/AbstractIoConnector;->defaultRemoteAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public final setConnectTimeout(I)V
    .locals 4

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/mina/core/service/AbstractIoConnector;->setConnectTimeoutMillis(J)V

    return-void
.end method

.method public setConnectTimeoutCheckInterval(J)V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoConnector;->getConnectTimeoutMillis()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    iput-wide p1, p0, Lorg/apache/mina/core/service/AbstractIoConnector;->connectTimeoutInMillis:J

    :cond_0
    iput-wide p1, p0, Lorg/apache/mina/core/service/AbstractIoConnector;->connectTimeoutCheckInterval:J

    return-void
.end method

.method public final setConnectTimeoutMillis(J)V
    .locals 3

    iget-wide v0, p0, Lorg/apache/mina/core/service/AbstractIoConnector;->connectTimeoutCheckInterval:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    iput-wide p1, p0, Lorg/apache/mina/core/service/AbstractIoConnector;->connectTimeoutCheckInterval:J

    :cond_0
    iput-wide p1, p0, Lorg/apache/mina/core/service/AbstractIoConnector;->connectTimeoutInMillis:J

    return-void
.end method

.method public final setDefaultRemoteAddress(Ljava/net/SocketAddress;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-interface {p0}, Lorg/apache/mina/core/service/IoService;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->getAddressType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/apache/mina/core/service/AbstractIoConnector;->defaultRemoteAddress:Ljava/net/SocketAddress;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "defaultRemoteAddress type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " (expected: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/apache/mina/core/service/IoService;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/mina/core/service/TransportMetadata;->getAddressType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "defaultRemoteAddress"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-interface {p0}, Lorg/apache/mina/core/service/IoService;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " connector: managedSessionCount: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/service/AbstractIoService;->getManagedSessionCount()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
