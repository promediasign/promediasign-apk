.class public Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;
.super Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;
.source "SourceFile"


# static fields
.field private static DEFAULT_KEEP_ALIVE:Z = false

.field private static DEFAULT_OOB_INLINE:Z = false

.field private static DEFAULT_REUSE_ADDRESS:Z = false

.field private static DEFAULT_SO_LINGER:I = -0x1

.field private static DEFAULT_TCP_NO_DELAY:Z

.field private static DEFAULT_TRAFFIC_CLASS:I


# instance fields
.field private defaultReuseAddress:Z

.field private keepAlive:Z

.field private oobInline:Z

.field protected parent:Lorg/apache/mina/core/service/IoService;

.field private receiveBufferSize:I

.field private reuseAddress:Z

.field private sendBufferSize:I

.field private soLinger:I

.field private tcpNoDelay:Z

.field private trafficClass:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->receiveBufferSize:I

    iput v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->sendBufferSize:I

    sget v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->DEFAULT_TRAFFIC_CLASS:I

    iput v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->trafficClass:I

    sget-boolean v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->DEFAULT_KEEP_ALIVE:Z

    iput-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->keepAlive:Z

    sget-boolean v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->DEFAULT_OOB_INLINE:Z

    iput-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->oobInline:Z

    sget v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->DEFAULT_SO_LINGER:I

    iput v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->soLinger:I

    sget-boolean v0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->DEFAULT_TCP_NO_DELAY:Z

    iput-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->tcpNoDelay:Z

    return-void
.end method


# virtual methods
.method public getReceiveBufferSize()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->receiveBufferSize:I

    return v0
.end method

.method public getSendBufferSize()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->sendBufferSize:I

    return v0
.end method

.method public getSoLinger()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->soLinger:I

    return v0
.end method

.method public getTrafficClass()I
    .locals 1

    iget v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->trafficClass:I

    return v0
.end method

.method public init(Lorg/apache/mina/core/service/IoService;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->parent:Lorg/apache/mina/core/service/IoService;

    instance-of p1, p1, Lorg/apache/mina/transport/socket/SocketAcceptor;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->defaultReuseAddress:Z

    goto :goto_1

    :cond_0
    sget-boolean p1, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->DEFAULT_REUSE_ADDRESS:Z

    goto :goto_0

    :goto_1
    iget-boolean p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->defaultReuseAddress:Z

    iput-boolean p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->reuseAddress:Z

    return-void
.end method

.method public isKeepAlive()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->keepAlive:Z

    return v0
.end method

.method public isKeepAliveChanged()Z
    .locals 2

    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->keepAlive:Z

    sget-boolean v1, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->DEFAULT_KEEP_ALIVE:Z

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOobInline()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->oobInline:Z

    return v0
.end method

.method public isOobInlineChanged()Z
    .locals 2

    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->oobInline:Z

    sget-boolean v1, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->DEFAULT_OOB_INLINE:Z

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReceiveBufferSizeChanged()Z
    .locals 2

    iget v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->receiveBufferSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReuseAddress()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->reuseAddress:Z

    return v0
.end method

.method public isReuseAddressChanged()Z
    .locals 2

    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->reuseAddress:Z

    iget-boolean v1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->defaultReuseAddress:Z

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSendBufferSizeChanged()Z
    .locals 2

    iget v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->sendBufferSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSoLingerChanged()Z
    .locals 2

    iget v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->soLinger:I

    sget v1, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->DEFAULT_SO_LINGER:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTcpNoDelay()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->tcpNoDelay:Z

    return v0
.end method

.method public isTcpNoDelayChanged()Z
    .locals 2

    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->tcpNoDelay:Z

    sget-boolean v1, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->DEFAULT_TCP_NO_DELAY:Z

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTrafficClassChanged()Z
    .locals 2

    iget v0, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->trafficClass:I

    sget v1, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->DEFAULT_TRAFFIC_CLASS:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setKeepAlive(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->keepAlive:Z

    return-void
.end method

.method public setOobInline(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->oobInline:Z

    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->receiveBufferSize:I

    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->reuseAddress:Z

    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 0

    iput p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->sendBufferSize:I

    return-void
.end method

.method public setSoLinger(I)V
    .locals 0

    iput p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->soLinger:I

    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->tcpNoDelay:Z

    return-void
.end method

.method public setTrafficClass(I)V
    .locals 0

    iput p1, p0, Lorg/apache/mina/transport/socket/DefaultSocketSessionConfig;->trafficClass:I

    return-void
.end method
