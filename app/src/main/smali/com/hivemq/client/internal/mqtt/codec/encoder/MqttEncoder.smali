.class public Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "SourceFile"


# instance fields
.field private final context:Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;

.field private final encoders:Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;

.field private inRead:Z

.field private pendingFlush:Z


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;)V
    .locals 1

    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;->inRead:Z

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;->pendingFlush:Z

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;->encoders:Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;

    new-instance p1, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;

    sget-object v0, Lio/netty/buffer/ByteBufAllocator;->DEFAULT:Lio/netty/buffer/ByteBufAllocator;

    invoke-direct {p1, v0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;-><init>(Lio/netty/buffer/ByteBufAllocator;)V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;->context:Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;

    return-void
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;->inRead:Z

    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;->inRead:Z

    iget-boolean v1, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;->pendingFlush:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;->pendingFlush:Z

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    :cond_0
    return-void
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1

    iget-boolean v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;->inRead:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;->pendingFlush:Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    :goto_0
    return-void
.end method

.method public isSharable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConnected(Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;)V
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;->context:Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/MqttClientConnectionConfig;->getSendMaximumPacketSize()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->setMaximumPacketSize(I)V

    return-void
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 2

    instance-of v0, p2, Lcom/hivemq/client/internal/mqtt/message/MqttMessage;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/hivemq/client/internal/mqtt/message/MqttMessage;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;->encoders:Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;

    invoke-interface {p2}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5Message;->getType()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoders;->get(I)Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoder;->context:Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;

    invoke-virtual {v0, p2, v1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;->castAndEncode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;

    move-result-object p2

    :cond_0
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :goto_0
    return-void
.end method
