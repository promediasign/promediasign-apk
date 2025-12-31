.class abstract Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static booleanPropertyEncodedLength(ZZ)I
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public static encodeBooleanProperty(IZZLio/netty/buffer/ByteBuf;)V
    .locals 0

    if-eq p1, p2, :cond_0

    invoke-virtual {p3, p0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p3, p1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    :cond_0
    return-void
.end method

.method public static encodeIntProperty(IJJLio/netty/buffer/ByteBuf;)V
    .locals 1

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    invoke-virtual {p5, p0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    long-to-int p0, p1

    invoke-virtual {p5, p0}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    :cond_0
    return-void
.end method

.method public static encodeNullableProperty(ILcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    invoke-static {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeProperty(ILcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)V

    :cond_0
    return-void
.end method

.method public static encodeNullableProperty(ILcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;Lio/netty/buffer/ByteBuf;)V
    .locals 0

    .line 2
    if-eqz p1, :cond_0

    invoke-virtual {p2, p0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;->getCode()I

    move-result p0

    invoke-virtual {p2, p0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    :cond_0
    return-void
.end method

.method public static encodeNullableProperty(ILjava/nio/ByteBuffer;Lio/netty/buffer/ByteBuf;)V
    .locals 0

    .line 3
    if-eqz p1, :cond_0

    invoke-virtual {p2, p0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-static {p1, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->encode(Ljava/nio/ByteBuffer;Lio/netty/buffer/ByteBuf;)V

    :cond_0
    return-void
.end method

.method public static encodeProperty(ILcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)V
    .locals 0

    invoke-virtual {p2, p0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public static encodeShortProperty(IIILio/netty/buffer/ByteBuf;)V
    .locals 0

    if-eq p1, p2, :cond_0

    invoke-virtual {p3, p0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p3, p1}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    :cond_0
    return-void
.end method

.method public static encodeVariableByteIntegerProperty(IIJLio/netty/buffer/ByteBuf;)V
    .locals 3

    .line 1
    int-to-long v0, p1

    cmp-long v2, v0, p2

    if-eqz v2, :cond_0

    invoke-static {p0, p1, p4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeVariableByteIntegerProperty(IILio/netty/buffer/ByteBuf;)V

    :cond_0
    return-void
.end method

.method public static encodeVariableByteIntegerProperty(IILio/netty/buffer/ByteBuf;)V
    .locals 0

    .line 2
    invoke-virtual {p2, p0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-static {p1, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->encode(ILio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public static intPropertyEncodedLength(JJ)I
    .locals 1

    cmp-long v0, p0, p2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    :goto_0
    return p0
.end method

.method public static nullablePropertyEncodedLength(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)I
    .locals 0

    .line 1
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->propertyEncodedLength(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static nullablePropertyEncodedLength(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;)I
    .locals 0

    .line 2
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public static nullablePropertyEncodedLength(Ljava/nio/ByteBuffer;)I
    .locals 0

    .line 3
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->encodedLength(Ljava/nio/ByteBuffer;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    :goto_0
    return p0
.end method

.method public static propertyEncodedLength(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)I
    .locals 0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->encodedLength()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static shortPropertyEncodedLength(II)I
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public static variableByteIntegerPropertyEncodedLength(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->encodedLength(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static variableByteIntegerPropertyEncodedLength(II)I
    .locals 0

    .line 2
    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->variableByteIntegerPropertyEncodedLength(I)I

    move-result p0

    :goto_0
    return p0
.end method
