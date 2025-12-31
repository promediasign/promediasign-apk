.class abstract Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static booleanOnlyOnce(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_3

    .line 2
    .line 3
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x1

    .line 8
    if-lt p0, v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_0
    if-ne p0, v0, :cond_1

    .line 19
    .line 20
    return v0

    .line 21
    :cond_1
    new-instance p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    .line 22
    .line 23
    sget-object p2, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    .line 24
    .line 25
    const-string v0, "malformed boolean for "

    .line 26
    .line 27
    invoke-static {v0, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p2, p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0

    .line 35
    :cond_2
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->malformedPropertyLength()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    throw p0

    .line 40
    :cond_3
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->moreThanOnce(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    throw p0
.end method

.method private static checkProblemInformationRequested(Ljava/lang/String;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->isProblemInformationRequested()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    .line 9
    .line 10
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    .line 11
    .line 12
    const-string v1, " must not be included if problem information is not requested"

    .line 13
    .line 14
    invoke-static {p0, v1}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {p1, v0, p0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public static checkPropertyLengthNoPayload(Lio/netty/buffer/ByteBuf;)V
    .locals 2

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->decode(Lio/netty/buffer/ByteBuf;)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    if-eq v1, v0, :cond_1

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p0

    if-ge p0, v0, :cond_0

    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->remainingLengthTooShort()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0

    :cond_0
    new-instance p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string v0, "must not have a payload"

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->malformedPropertyLength()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0
.end method

.method public static decodeAuthData(Ljava/nio/ByteBuffer;Lio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Ljava/nio/ByteBuffer;
    .locals 1

    const-string v0, "auth data"

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;->useDirectBufferAuth()Z

    move-result p2

    invoke-static {p0, v0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeBinaryDataOnlyOnce(Ljava/nio/ByteBuffer;Ljava/lang/String;Lio/netty/buffer/ByteBuf;Z)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static decodeAuthMethod(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 1

    const-string v0, "auth method"

    invoke-static {p0, v0, p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeUTF8StringOnlyOnce(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Ljava/lang/String;Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object p0

    return-object p0
.end method

.method public static decodeBinaryDataOnlyOnce(Ljava/nio/ByteBuffer;Ljava/lang/String;Lio/netty/buffer/ByteBuf;Z)Ljava/nio/ByteBuffer;
    .locals 0

    .line 1
    if-nez p0, :cond_1

    .line 2
    .line 3
    invoke-static {p2, p3}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->decode(Lio/netty/buffer/ByteBuf;Z)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    .line 11
    .line 12
    const-string p2, "malformed binary data for "

    .line 13
    .line 14
    invoke-static {p2, p1}, Lch/qos/logback/core/joran/util/a;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0

    .line 22
    :cond_1
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->moreThanOnce(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    throw p0
.end method

.method public static decodePropertyIdentifier(Lio/netty/buffer/ByteBuf;)I
    .locals 1

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->decode(Lio/netty/buffer/ByteBuf;)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string v0, "malformed property identifier"

    invoke-direct {p0, v0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decodePropertyLength(Lio/netty/buffer/ByteBuf;)I
    .locals 1

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->decode(Lio/netty/buffer/ByteBuf;)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p0

    if-lt p0, v0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->remainingLengthTooShort()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->malformedPropertyLength()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0
.end method

.method public static decodeReasonString(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 1

    const-string v0, "reason string"

    invoke-static {p0, v0, p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeUTF8StringOnlyOnce(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Ljava/lang/String;Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object p0

    return-object p0
.end method

.method public static decodeReasonStringIfRequested(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 1

    const-string v0, "reason string"

    invoke-static {v0, p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->checkProblemInformationRequested(Ljava/lang/String;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)V

    invoke-static {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeReasonString(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object p0

    return-object p0
.end method

.method public static decodeServerReference(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 1

    const-string v0, "server reference"

    invoke-static {p0, v0, p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeUTF8StringOnlyOnce(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Ljava/lang/String;Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object p0

    return-object p0
.end method

.method public static decodeSessionExpiryInterval(JLio/netty/buffer/ByteBuf;)J
    .locals 6

    const-wide/16 v2, -0x1

    const-string v4, "session expiry interval"

    move-wide v0, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->unsignedIntOnlyOnce(JJLjava/lang/String;Lio/netty/buffer/ByteBuf;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static decodeUTF8StringOnlyOnce(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Ljava/lang/String;Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 0

    if-nez p0, :cond_1

    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->decode(Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttMessageDecoderUtil;->malformedUTF8String(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->moreThanOnce(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0
.end method

.method public static decodeUserProperty(Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;",
            ">;",
            "Lio/netty/buffer/ByteBuf;",
            ")",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->decode(Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;

    move-result-object p1

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    invoke-static {}, Lcom/hivemq/client/internal/util/collections/b;->v()Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    move-result-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    return-object p0

    :cond_1
    new-instance p0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string p1, "malformed user property"

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decodeUserPropertyIfRequested(Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;Lio/netty/buffer/ByteBuf;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;",
            ">;",
            "Lio/netty/buffer/ByteBuf;",
            "Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;",
            ")",
            "Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder<",
            "Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;",
            ">;"
        }
    .end annotation

    const-string v0, "user property"

    invoke-static {v0, p2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->checkProblemInformationRequested(Ljava/lang/String;Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderContext;)V

    invoke-static {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->decodeUserProperty(Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/util/collections/ImmutableList$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static malformedPropertyLength()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;
    .locals 2

    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string v1, "malformed properties length"

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static moreThanOnce(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;
    .locals 3

    .line 1
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    .line 2
    .line 3
    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    .line 4
    .line 5
    const-string v2, " must not be included more than once"

    .line 6
    .line 7
    invoke-static {p0, v2}, LA/g;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, v1, p0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static noReasonCodes()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;
    .locals 3

    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    const-string v2, "must contain at least one reason code"

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/String;)V

    return-object v0
.end method

.method public static unsignedByteOnlyOnce(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)S
    .locals 0

    if-nez p0, :cond_1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p0

    const/4 p1, 0x1

    if-lt p0, p1, :cond_0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->malformedPropertyLength()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->moreThanOnce(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0
.end method

.method public static unsignedIntOnlyOnce(JJLjava/lang/String;Lio/netty/buffer/ByteBuf;)J
    .locals 1

    .line 1
    cmp-long v0, p0, p2

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0, p4, p5}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->unsignedIntOnlyOnce(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static unsignedIntOnlyOnce(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)J
    .locals 0

    .line 2
    if-nez p0, :cond_1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p0

    const/4 p1, 0x4

    if-lt p0, p1, :cond_0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedInt()J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->malformedPropertyLength()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->moreThanOnce(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0
.end method

.method public static unsignedShortOnlyOnce(IILjava/lang/String;Lio/netty/buffer/ByteBuf;)I
    .locals 0

    .line 1
    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->unsignedShortOnlyOnce(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)I

    move-result p0

    return p0
.end method

.method public static unsignedShortOnlyOnce(ZLjava/lang/String;Lio/netty/buffer/ByteBuf;)I
    .locals 0

    .line 2
    if-nez p0, :cond_1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p0

    const/4 p1, 0x2

    if-lt p0, p1, :cond_0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->malformedPropertyLength()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/mqtt5/Mqtt5MessageDecoderUtil;->moreThanOnce(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    move-result-object p0

    throw p0
.end method

.method public static wrongProperty(I)Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;
    .locals 2

    .line 1
    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    .line 2
    .line 3
    const-string v1, "wrong property with identifier "

    .line 4
    .line 5
    invoke-static {p0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static wrongReasonCode()Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;
    .locals 2

    new-instance v0, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;

    const-string v1, "wrong reason code"

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/codec/decoder/MqttDecoderException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
