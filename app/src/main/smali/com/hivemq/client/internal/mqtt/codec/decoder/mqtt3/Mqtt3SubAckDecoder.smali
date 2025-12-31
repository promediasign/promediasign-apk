.class public Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3SubAckDecoder;
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
    invoke-virtual {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3SubAckDecoder;->decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;

    move-result-object p1

    return-object p1
.end method

.method public decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;
    .locals 3

    .line 2
    const/4 p3, 0x0

    invoke-static {p3, p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->checkFixedHeaderFlags(II)V

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_2

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result p1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-static {v0}, Lcom/hivemq/client/internal/util/collections/b;->w(I)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    move-result-object v1

    :goto_0
    if-ge p3, v0, :cond_1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v2

    invoke-static {v2}, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;->fromCode(I)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt3/Mqtt3MessageDecoderUtil;->wrongReturnCode()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-virtual {v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->build()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/mqtt3/Mqtt3SubAckView;->delegate(ILcom/hivemq/client/internal/util/collections/ImmutableList;)Lcom/hivemq/client/internal/mqtt/message/subscribe/suback/MqttSubAck;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->remainingLengthTooShort()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p1

    throw p1
.end method
