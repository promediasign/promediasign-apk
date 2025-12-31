.class public abstract Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;
.super Lorg/apache/mina/core/session/AbstractIoSessionConfig;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/transport/socket/SocketSessionConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public final doSetAll(Lorg/apache/mina/core/session/IoSessionConfig;)V
    .locals 2

    instance-of v0, p1, Lorg/apache/mina/transport/socket/SocketSessionConfig;

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;

    if-eqz v0, :cond_8

    check-cast p1, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;

    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isKeepAliveChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->isKeepAlive()Z

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->setKeepAlive(Z)V

    :cond_1
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isOobInlineChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->isOobInline()Z

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->setOobInline(Z)V

    :cond_2
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isReceiveBufferSizeChanged()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->getReceiveBufferSize()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->setReceiveBufferSize(I)V

    :cond_3
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isReuseAddressChanged()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->isReuseAddress()Z

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->setReuseAddress(Z)V

    :cond_4
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isSendBufferSizeChanged()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->getSendBufferSize()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->setSendBufferSize(I)V

    :cond_5
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isSoLingerChanged()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->getSoLinger()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->setSoLinger(I)V

    :cond_6
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isTcpNoDelayChanged()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->isTcpNoDelay()Z

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->setTcpNoDelay(Z)V

    :cond_7
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/AbstractSocketSessionConfig;->isTrafficClassChanged()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->getTrafficClass()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->getTrafficClass()I

    move-result v1

    if-eq v0, v1, :cond_9

    goto :goto_0

    :cond_8
    check-cast p1, Lorg/apache/mina/transport/socket/SocketSessionConfig;

    invoke-interface {p1}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->isKeepAlive()Z

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->setKeepAlive(Z)V

    invoke-interface {p1}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->isOobInline()Z

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->setOobInline(Z)V

    invoke-interface {p1}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->getReceiveBufferSize()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->setReceiveBufferSize(I)V

    invoke-interface {p1}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->isReuseAddress()Z

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->setReuseAddress(Z)V

    invoke-interface {p1}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->getSendBufferSize()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->setSendBufferSize(I)V

    invoke-interface {p1}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->getSoLinger()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->setSoLinger(I)V

    invoke-interface {p1}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->isTcpNoDelay()Z

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->setTcpNoDelay(Z)V

    invoke-interface {p0}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->getTrafficClass()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->getTrafficClass()I

    move-result v1

    if-eq v0, v1, :cond_9

    :goto_0
    invoke-interface {p1}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->getTrafficClass()I

    move-result p1

    invoke-interface {p0, p1}, Lorg/apache/mina/transport/socket/SocketSessionConfig;->setTrafficClass(I)V

    :cond_9
    return-void
.end method

.method public isKeepAliveChanged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isOobInlineChanged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isReceiveBufferSizeChanged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isReuseAddressChanged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSendBufferSizeChanged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSoLingerChanged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTcpNoDelayChanged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTrafficClassChanged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
