.class public abstract Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static encodeNullable(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    :cond_0
    return-void
.end method

.method public static encodeNullable(Ljava/nio/ByteBuffer;Lio/netty/buffer/ByteBuf;)V
    .locals 0

    .line 2
    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->encode(Ljava/nio/ByteBuffer;Lio/netty/buffer/ByteBuf;)V

    :cond_0
    return-void
.end method

.method public static encodedLengthWithHeader(I)I
    .locals 1

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->encodedLength(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static encodedPacketLength(I)I
    .locals 0

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->encodedLengthWithHeader(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static maximumPacketSizeExceeded(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;II)Lcom/hivemq/client/mqtt/exceptions/MqttEncodeException;
    .locals 2

    .line 1
    new-instance v0, Lcom/hivemq/client/mqtt/exceptions/MqttEncodeException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5Message;->getType()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string p0, " exceeded maximum packet size, minimal possible encoded length: "

    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, ", maximum: "

    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p0, "."

    .line 29
    .line 30
    invoke-static {p0, p2, v1}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-direct {v0, p0}, Lcom/hivemq/client/mqtt/exceptions/MqttEncodeException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method

.method public static nullableEncodedLength(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)I
    .locals 0

    .line 1
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->encodedLength()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static nullableEncodedLength(Ljava/nio/ByteBuffer;)I
    .locals 0

    .line 2
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->encodedLength(Ljava/nio/ByteBuffer;)I

    move-result p0

    :goto_0
    return p0
.end method
