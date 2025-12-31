.class public abstract Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;
.super Lorg/apache/mina/core/session/AbstractIoSessionConfig;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/transport/socket/DatagramSessionConfig;


# static fields
.field private static final DEFAULT_CLOSE_ON_PORT_UNREACHABLE:Z = true


# instance fields
.field private closeOnPortUnreachable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/mina/core/session/AbstractIoSessionConfig;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->closeOnPortUnreachable:Z

    return-void
.end method


# virtual methods
.method public doSetAll(Lorg/apache/mina/core/session/IoSessionConfig;)V
    .locals 2

    instance-of v0, p1, Lorg/apache/mina/transport/socket/DatagramSessionConfig;

    if-nez v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;

    if-eqz v0, :cond_5

    check-cast p1, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;

    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->isBroadcastChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->isBroadcast()Z

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->setBroadcast(Z)V

    :cond_1
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->isReceiveBufferSizeChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->getReceiveBufferSize()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->setReceiveBufferSize(I)V

    :cond_2
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->isReuseAddressChanged()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->isReuseAddress()Z

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->setReuseAddress(Z)V

    :cond_3
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->isSendBufferSizeChanged()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->getSendBufferSize()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->setSendBufferSize(I)V

    :cond_4
    invoke-virtual {p1}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->isTrafficClassChanged()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->getTrafficClass()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->getTrafficClass()I

    move-result v1

    if-eq v0, v1, :cond_6

    goto :goto_0

    :cond_5
    check-cast p1, Lorg/apache/mina/transport/socket/DatagramSessionConfig;

    invoke-interface {p1}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->isBroadcast()Z

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->setBroadcast(Z)V

    invoke-interface {p1}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->getReceiveBufferSize()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->setReceiveBufferSize(I)V

    invoke-interface {p1}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->isReuseAddress()Z

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->setReuseAddress(Z)V

    invoke-interface {p1}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->getSendBufferSize()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->setSendBufferSize(I)V

    invoke-interface {p0}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->getTrafficClass()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->getTrafficClass()I

    move-result v1

    if-eq v0, v1, :cond_6

    :goto_0
    invoke-interface {p1}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->getTrafficClass()I

    move-result p1

    invoke-interface {p0, p1}, Lorg/apache/mina/transport/socket/DatagramSessionConfig;->setTrafficClass(I)V

    :cond_6
    return-void
.end method

.method public isBroadcastChanged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isCloseOnPortUnreachable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->closeOnPortUnreachable:Z

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

.method public isTrafficClassChanged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setCloseOnPortUnreachable(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;->closeOnPortUnreachable:Z

    return-void
.end method
