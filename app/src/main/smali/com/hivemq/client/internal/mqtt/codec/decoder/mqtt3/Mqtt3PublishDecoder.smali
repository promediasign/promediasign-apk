.class public Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PublishDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/MqttMessage;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3PublishDecoder;->decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    move-result-object p1

    return-object p1
.end method

.method public decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;
    .locals 6

    .line 2
    and-int/lit8 v0, p1, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->decodePublishQos(IZ)Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v3

    and-int/2addr p1, v2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p1

    const/4 v4, 0x2

    if-lt p1, v4, :cond_4

    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->decode(Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {v3, p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->decodePublishPacketIdentifier(Lcom/hivemq/client/mqtt/datatypes/MqttQos;Lio/netty/buffer/ByteBuf;)I

    move-result v4

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->useDirectBufferPayload()Z

    move-result p3

    invoke-static {v5, p3}, Lcom/hivemq/client/internal/util/ByteBufferUtil;->allocate(IZ)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/netty/buffer/ByteBuf;->readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    invoke-static {p1, p3, v3, v2}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->delegate(Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/mqtt/datatypes/MqttQos;Z)Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    move-result-object p1

    invoke-static {p1, v4, v0}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->statefulDelegate(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;IZ)Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->malformedTopic()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p1

    throw p1

    :cond_4
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->remainingLengthTooShort()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p1

    throw p1
.end method
