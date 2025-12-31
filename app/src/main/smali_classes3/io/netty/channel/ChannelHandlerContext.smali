.class public interface abstract Lio/netty/channel/ChannelHandlerContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/AttributeMap;
.implements Lio/netty/channel/ChannelInboundInvoker;
.implements Lio/netty/channel/ChannelOutboundInvoker;


# virtual methods
.method public abstract alloc()Lio/netty/buffer/ByteBufAllocator;
.end method

.method public abstract attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/AttributeKey<",
            "TT;>;)",
            "Lio/netty/util/Attribute<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract synthetic bind(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract synthetic bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract channel()Lio/netty/channel/Channel;
.end method

.method public abstract synthetic close()Lio/netty/channel/ChannelFuture;
.end method

.method public abstract synthetic close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
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

.method public abstract executor()Lio/netty/util/concurrent/EventExecutor;
.end method

.method public abstract fireChannelActive()Lio/netty/channel/ChannelHandlerContext;
.end method

.method public abstract synthetic fireChannelActive()Lio/netty/channel/ChannelInboundInvoker;
.end method

.method public abstract fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;
.end method

.method public abstract synthetic fireChannelInactive()Lio/netty/channel/ChannelInboundInvoker;
.end method

.method public abstract fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;
.end method

.method public abstract synthetic fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelInboundInvoker;
.end method

.method public abstract fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;
.end method

.method public abstract synthetic fireChannelReadComplete()Lio/netty/channel/ChannelInboundInvoker;
.end method

.method public abstract fireChannelRegistered()Lio/netty/channel/ChannelHandlerContext;
.end method

.method public abstract synthetic fireChannelRegistered()Lio/netty/channel/ChannelInboundInvoker;
.end method

.method public abstract fireChannelUnregistered()Lio/netty/channel/ChannelHandlerContext;
.end method

.method public abstract synthetic fireChannelUnregistered()Lio/netty/channel/ChannelInboundInvoker;
.end method

.method public abstract fireChannelWritabilityChanged()Lio/netty/channel/ChannelHandlerContext;
.end method

.method public abstract synthetic fireChannelWritabilityChanged()Lio/netty/channel/ChannelInboundInvoker;
.end method

.method public abstract fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;
.end method

.method public abstract synthetic fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelInboundInvoker;
.end method

.method public abstract fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;
.end method

.method public abstract synthetic fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelInboundInvoker;
.end method

.method public abstract flush()Lio/netty/channel/ChannelHandlerContext;
.end method

.method public abstract synthetic flush()Lio/netty/channel/ChannelOutboundInvoker;
.end method

.method public abstract handler()Lio/netty/channel/ChannelHandler;
.end method

.method public abstract hasAttr(Lio/netty/util/AttributeKey;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/util/AttributeKey<",
            "TT;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isRemoved()Z
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract synthetic newFailedFuture(Ljava/lang/Throwable;)Lio/netty/channel/ChannelFuture;
.end method

.method public abstract synthetic newProgressivePromise()Lio/netty/channel/ChannelProgressivePromise;
.end method

.method public abstract synthetic newPromise()Lio/netty/channel/ChannelPromise;
.end method

.method public abstract synthetic newSucceededFuture()Lio/netty/channel/ChannelFuture;
.end method

.method public abstract pipeline()Lio/netty/channel/ChannelPipeline;
.end method

.method public abstract read()Lio/netty/channel/ChannelHandlerContext;
.end method

.method public abstract synthetic read()Lio/netty/channel/ChannelOutboundInvoker;
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
