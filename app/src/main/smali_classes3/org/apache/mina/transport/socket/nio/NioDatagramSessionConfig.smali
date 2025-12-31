.class Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;
.super Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;
.source "SourceFile"


# instance fields
.field private final channel:Ljava/nio/channels/DatagramChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/DatagramChannel;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/mina/transport/socket/AbstractDatagramSessionConfig;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;->channel:Ljava/nio/channels/DatagramChannel;

    return-void
.end method


# virtual methods
.method public getReceiveBufferSize()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getReceiveBufferSize()I

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSendBufferSize()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getSendBufferSize()I

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTrafficClass()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getTrafficClass()I

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isBroadcast()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getBroadcast()Z

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isReuseAddress()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getReuseAddress()Z

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setBroadcast(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setBroadcast(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v0, p1}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setReceiveBufferSize(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v0, p1}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setReuseAddress(Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v0, p1}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setSendBufferSize(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setSendBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v0, p1}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setTrafficClass(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/transport/socket/nio/NioDatagramSessionConfig;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->setTrafficClass(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v0, p1}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
