.class public abstract synthetic LB0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/hivemq/client/internal/netty/DefaultChannelOutboundHandler;Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static b(Lcom/hivemq/client/internal/netty/DefaultChannelOutboundHandler;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c(Lcom/hivemq/client/internal/netty/DefaultChannelOutboundHandler;Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1
    invoke-interface {p1, p2, p3, p4}, Lio/netty/channel/ChannelHandlerContext;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static d(Lcom/hivemq/client/internal/netty/DefaultChannelOutboundHandler;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static e(Lcom/hivemq/client/internal/netty/DefaultChannelOutboundHandler;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static f(Lcom/hivemq/client/internal/netty/DefaultChannelOutboundHandler;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static g(Lcom/hivemq/client/internal/netty/DefaultChannelOutboundHandler;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static h(Lcom/hivemq/client/internal/netty/DefaultChannelOutboundHandler;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 2
    .line 3
    .line 4
    return-void
.end method
