.class public Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "SourceFile"


# instance fields
.field private final context:Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;

.field private final decoders:Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)V
    .locals 9

    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;->decoders:Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;

    invoke-virtual {p3}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRestrictions()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    move-result-object p1

    new-instance p3, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getMaximumPacketSize()I

    move-result v1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getTopicAliasMaximum()I

    move-result v2

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->isRequestProblemInformation()Z

    move-result v3

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->isRequestResponseInformation()Z

    move-result v4

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->getAdvancedConfig()Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/advanced/MqttClientAdvancedConfig;->isValidatePayloadFormat()Z

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v0, p3

    invoke-direct/range {v0 .. v8}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;-><init>(IIZZZZZZ)V

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;->context:Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;

    return-void
.end method


# virtual methods
.method public decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v1

    shr-int/lit8 v2, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->decode(Lio/netty/buffer/ByteBuf;)I

    move-result v3

    if-gez v3, :cond_2

    const/4 p3, -0x1

    if-ne v3, p3, :cond_1

    :try_start_0
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    return-void

    :catch_0
    move-exception p3

    goto :goto_0

    :cond_1
    new-instance p3, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string v0, "malformed remaining length"

    invoke-direct {p3, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_2
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    sub-int v5, v4, v0

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;->context:Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;

    invoke-virtual {v6}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->getMaximumPacketSize()I

    move-result v6

    if-gt v5, v6, :cond_5

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v5

    add-int/2addr v4, v3

    if-ge v5, v4, :cond_3

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    return-void

    :cond_3
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;->decoders:Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;

    invoke-virtual {v0, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoders;->get(I)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, v4}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoder;->context:Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;

    invoke-interface {v0, v1, p2, v3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoder;->decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/MqttMessage;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v5}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    :cond_4
    new-instance p3, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v1, "must not receive this packet type"

    invoke-direct {p3, v0, v1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw p3

    :cond_5
    new-instance p3, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PACKET_TOO_LARGE:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v1, "incoming packet exceeded maximum packet size"

    invoke-direct {p3, v0, v1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw p3
    :try_end_0
    .catch Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->clear()Lio/netty/buffer/ByteBuf;

    invoke-static {v2}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->fromCode(I)Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception while decoding "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_6

    const-string p2, "UNKNOWN"

    :cond_6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object p1

    invoke-virtual {p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    move-result-object p3

    new-instance v0, Lcom/hivemq/client/mqtt/exceptions/MqttDecodeException;

    invoke-direct {v0, p2}, Lcom/hivemq/client/mqtt/exceptions/MqttDecodeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p3, v0}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public isSharable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
