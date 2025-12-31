.class public interface abstract Lio/netty/channel/socket/DuplexChannel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/channel/Channel;


# virtual methods
.method public abstract synthetic alloc()Lio/netty/buffer/ByteBufAllocator;
.end method

.method public abstract synthetic attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;
.end method

.method public abstract synthetic bind(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract synthetic bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract synthetic bytesBeforeUnwritable()J
.end method

.method public abstract synthetic bytesBeforeWritable()J
.end method

.method public abstract synthetic close()Lio/netty/channel/ChannelFuture;
.end method

.method public abstract synthetic close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract synthetic closeFuture()Lio/netty/channel/ChannelFuture;
.end method

.method public abstract synthetic config()Lio/netty/channel/ChannelConfig;
.end method

.method public abstract synthetic connect(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract synthetic connect(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract synthetic connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract synthetic connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract synthetic deregister()Lio/netty/channel/ChannelFuture;
.end method

.method public abstract synthetic deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract synthetic disconnect()Lio/netty/channel/ChannelFuture;
.end method

.method public abstract synthetic disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract synthetic eventLoop()Lio/netty/channel/EventLoop;
.end method

.method public abstract synthetic flush()Lio/netty/channel/Channel;
.end method

.method public abstract synthetic flush()Lio/netty/channel/ChannelOutboundInvoker;
.end method

.method public abstract synthetic hasAttr(Lio/netty/util/AttributeKey;)Z
.end method

.method public abstract synthetic id()Lio/netty/channel/ChannelId;
.end method

.method public abstract synthetic isActive()Z
.end method

.method public abstract isInputShutdown()Z
.end method

.method public abstract synthetic isOpen()Z
.end method

.method public abstract isOutputShutdown()Z
.end method

.method public abstract synthetic isRegistered()Z
.end method

.method public abstract isShutdown()Z
.end method

.method public abstract synthetic isWritable()Z
.end method

.method public abstract synthetic localAddress()Ljava/net/SocketAddress;
.end method

.method public abstract synthetic metadata()Lio/netty/channel/ChannelMetadata;
.end method

.method public abstract synthetic newFailedFuture(Ljava/lang/Throwable;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract synthetic newProgressivePromise()Lio/netty/channel/ChannelProgressivePromise;
.end method

.method public abstract synthetic newPromise()Lio/netty/channel/ChannelPromise;
.end method

.method public abstract synthetic newSucceededFuture()Lio/netty/channel/ChannelFuture;
.end method

.method public abstract synthetic parent()Lio/netty/channel/Channel;
.end method

.method public abstract synthetic pipeline()Lio/netty/channel/ChannelPipeline;
.end method

.method public abstract synthetic read()Lio/netty/channel/Channel;
.end method

.method public abstract synthetic read()Lio/netty/channel/ChannelOutboundInvoker;
.end method

.method public abstract synthetic remoteAddress()Ljava/net/SocketAddress;
.end method

.method public abstract shutdown()Lio/netty/channel/ChannelFuture;
.end method

.method public abstract shutdown(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract shutdownInput()Lio/netty/channel/ChannelFuture;
.end method

.method public abstract shutdownInput(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract shutdownOutput()Lio/netty/channel/ChannelFuture;
.end method

.method public abstract shutdownOutput(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract synthetic unsafe()Lio/netty/channel/Channel$Unsafe;
.end method

.method public abstract synthetic voidPromise()Lio/netty/channel/ChannelPromise;
.end method

.method public abstract synthetic write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract synthetic write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract synthetic writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract synthetic writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end method
