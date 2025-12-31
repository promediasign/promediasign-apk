.class public interface abstract Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/Channel$Unsafe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/nio/AbstractNioChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NioUnsafe"
.end annotation


# virtual methods
.method public abstract synthetic beginRead()V
.end method

.method public abstract synthetic bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
.end method

.method public abstract ch()Ljava/nio/channels/SelectableChannel;
.end method

.method public abstract synthetic close(Lio/netty/channel/ChannelPromise;)V
.end method

.method public abstract synthetic closeForcibly()V
.end method

.method public abstract synthetic connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
.end method

.method public abstract synthetic deregister(Lio/netty/channel/ChannelPromise;)V
.end method

.method public abstract synthetic disconnect(Lio/netty/channel/ChannelPromise;)V
.end method

.method public abstract finishConnect()V
.end method

.method public abstract synthetic flush()V
.end method

.method public abstract forceFlush()V
.end method

.method public abstract synthetic localAddress()Ljava/net/SocketAddress;
.end method

.method public abstract synthetic outboundBuffer()Lio/netty/channel/ChannelOutboundBuffer;
.end method

.method public abstract read()V
.end method

.method public abstract synthetic recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;
.end method

.method public abstract synthetic register(Lio/netty/channel/EventLoop;Lio/netty/channel/ChannelPromise;)V
.end method

.method public abstract synthetic remoteAddress()Ljava/net/SocketAddress;
.end method

.method public abstract synthetic voidPromise()Lio/netty/channel/ChannelPromise;
.end method

.method public abstract synthetic write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
.end method
