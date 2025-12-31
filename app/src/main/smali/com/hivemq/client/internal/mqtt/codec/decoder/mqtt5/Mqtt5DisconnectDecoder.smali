.class public Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5DisconnectDecoder;
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
    invoke-virtual {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5DisconnectDecoder;->decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    move-result-object p1

    return-object p1
.end method

.method public decode(ILio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;
    .locals 9

    .line 2
    const/4 p3, 0x0

    invoke-static {p3, p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->checkFixedHeaderFlags(II)V

    sget-object p1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5Disconnect;->DEFAULT_REASON_CODE:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result p3

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_5

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result p1

    invoke-static {p1}, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->fromCode(I)Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->checkPropertyLengthNoPayload(Lio/netty/buffer/ByteBuf;)V

    move-object p3, v2

    move-object v3, p3

    :goto_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodePropertyIdentifier(Lio/netty/buffer/ByteBuf;)I

    move-result v4

    const/16 v5, 0x11

    if-eq v4, v5, :cond_3

    const/16 v5, 0x1c

    if-eq v4, v5, :cond_2

    const/16 v5, 0x1f

    if-eq v4, v5, :cond_1

    const/16 v5, 0x26

    if-ne v4, v5, :cond_0

    invoke-static {v3, p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeUserProperty(Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->wrongProperty(I)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-static {p3, p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeReasonString(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object p3

    goto :goto_0

    :cond_2
    invoke-static {v2, p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeServerReference(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-static {v0, v1, p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeSessionExpiryInterval(JLio/netty/buffer/ByteBuf;)J

    move-result-wide v0

    goto :goto_0

    :cond_4
    move-object v5, p3

    move-object v4, v2

    move-object v2, v3

    :goto_1
    move-wide v7, v0

    move-object v1, p1

    move-wide p1, v7

    goto :goto_2

    :cond_5
    move-object v4, v2

    move-object v5, v4

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->wrongReasonCode()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p1

    throw p1

    :goto_2
    invoke-static {v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->build(Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v6

    new-instance p3, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;

    move-object v0, p3

    move-wide v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/hivemq/client/internal/mqtt/message/disconnect/MqttDisconnect;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;JLcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;)V

    return-object p3
.end method
