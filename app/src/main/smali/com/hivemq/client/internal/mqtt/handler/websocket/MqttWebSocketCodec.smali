.class public Lcom/hivemq/client/internal/mqtt/handler/websocket/MqttWebSocketCodec;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "SourceFile"


# annotations
.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p2, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    if-eqz v0, :cond_5

    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/websocketx/WebSocketFrame;

    instance-of v1, p2, Lio/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;

    if-nez v1, :cond_4

    instance-of v1, p2, Lio/netty/handler/codec/http/websocketx/ContinuationWebSocketFrame;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p2, Lio/netty/handler/codec/http/websocketx/TextWebSocketFrame;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lio/netty/buffer/DefaultByteBufHolder;->release()Z

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    const-string p2, "Must not receive text websocket frames"

    invoke-static {p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->close(Lio/netty/channel/Channel;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    instance-of v1, p2, Lio/netty/handler/codec/http/websocketx/CloseWebSocketFrame;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lio/netty/buffer/DefaultByteBufHolder;->release()Z

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    goto :goto_1

    :cond_2
    instance-of p2, p2, Lio/netty/handler/codec/http/websocketx/PingWebSocketFrame;

    if-eqz p2, :cond_3

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    new-instance p2, Lio/netty/handler/codec/http/websocketx/PongWebSocketFrame;

    invoke-virtual {v0}, Lio/netty/buffer/DefaultByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-direct {p2, v0}, Lio/netty/handler/codec/http/websocketx/PongWebSocketFrame;-><init>(Lio/netty/buffer/ByteBuf;)V

    invoke-interface {p1, p2}, Lio/netty/channel/Channel;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lio/netty/buffer/DefaultByteBufHolder;->release()Z

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {v0}, Lio/netty/buffer/DefaultByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    move-result-object p2

    :cond_5
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    :goto_1
    return-void
.end method

.method public isSharable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 1

    instance-of v0, p2, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    new-instance v0, Lio/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;

    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-direct {v0, p2}, Lio/netty/handler/codec/http/websocketx/BinaryWebSocketFrame;-><init>(Lio/netty/buffer/ByteBuf;)V

    invoke-interface {p1, v0, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    :goto_0
    return-void
.end method
