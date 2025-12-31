.class public Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5AuthDecoder;
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
    invoke-virtual {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5AuthDecoder;->decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    move-result-object p1

    return-object p1
.end method

.method public decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;
    .locals 6

    .line 2
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->checkFixedHeaderFlags(II)V

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_7

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result p1

    invoke-static {p1}, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;->fromCode(I)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->checkPropertyLengthNoPayload(Lio/netty/buffer/ByteBuf;)V

    const/4 p1, 0x0

    move-object v2, p1

    move-object v3, v2

    move-object v4, v3

    :goto_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodePropertyIdentifier(Lio/netty/buffer/ByteBuf;)I

    move-result v0

    const/16 v5, 0x15

    if-eq v0, v5, :cond_3

    const/16 v5, 0x16

    if-eq v0, v5, :cond_2

    const/16 v5, 0x1f

    if-eq v0, v5, :cond_1

    const/16 v5, 0x26

    if-ne v0, v5, :cond_0

    invoke-static {p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeUserPropertyIfRequested(Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;Lio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->wrongProperty(I)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {v4, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeReasonStringIfRequested(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-static {v3, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeAuthData(Ljava/nio/ByteBuffer;Lio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Ljava/nio/ByteBuffer;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-static {v2, p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeAuthMethod(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v2

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->build(Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v5

    new-instance p1, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Ljava/nio/ByteBuffer;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string p3, "must not omit authentication method"

    invoke-direct {p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->wrongReasonCode()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p1

    throw p1

    :cond_7
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->remainingLengthTooShort()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p1

    throw p1
.end method
