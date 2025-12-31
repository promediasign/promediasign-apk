.class public Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5UnsubAckDecoder;
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
    invoke-virtual {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5UnsubAckDecoder;->decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;

    move-result-object p1

    return-object p1
.end method

.method public decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;
    .locals 7

    .line 2
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->checkFixedHeaderFlags(II)V

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p1

    const/4 v1, 0x3

    if-lt p1, v1, :cond_7

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result p1

    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodePropertyLength(Lio/netty/buffer/ByteBuf;)I

    move-result v1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v5

    sub-int/2addr v5, v2

    if-ge v5, v1, :cond_2

    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodePropertyIdentifier(Lio/netty/buffer/ByteBuf;)I

    move-result v5

    const/16 v6, 0x1f

    if-eq v5, v6, :cond_1

    const/16 v6, 0x26

    if-ne v5, v6, :cond_0

    invoke-static {v4, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeUserPropertyIfRequested(Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;Lio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-static {v5}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->wrongProperty(I)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {v3, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeReasonStringIfRequested(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v3

    goto :goto_0

    :cond_2
    if-ne v5, v1, :cond_6

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p3

    if-eqz p3, :cond_5

    invoke-static {p3}, Lcom/hivemq/client/internal/util/collections/b;->w(I)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    move-result-object v1

    :goto_1
    if-ge v0, p3, :cond_4

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v2

    invoke-static {v2}, Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;->fromCode(I)Lcom/hivemq/client/mqtt/mqtt5/message/unsubscribe/unsuback/Mqtt5UnsubAckReasonCode;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->wrongReasonCode()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p1

    throw p1

    :cond_4
    invoke-virtual {v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->build()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object p2

    invoke-static {v4}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->build(Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object p3

    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;

    invoke-direct {v0, p1, p2, v3, p3}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/unsuback/MqttUnsubAck;-><init>(ILcom/hivemq/client/internal/util/collections/ImmutableList;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    return-object v0

    :cond_5
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->noReasonCodes()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p1

    throw p1

    :cond_6
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->malformedPropertyLength()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p1

    throw p1

    :cond_7
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->remainingLengthTooShort()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p1

    throw p1
.end method
