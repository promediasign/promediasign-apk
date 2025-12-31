.class abstract Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;
.super Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;",
        ">",
        "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder<",
        "TM;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;-><init>()V

    return-void
.end method

.method private remainingLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;II)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;II)I"
        }
    .end annotation

    invoke-virtual {p0, p1, p3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;->propertyLengthWithHeader(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;I)I

    move-result p1

    add-int/2addr p2, p1

    return p2
.end method


# virtual methods
.method public encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;",
            ")",
            "Lio/netty/buffer/ByteBuf;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;->propertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;->remainingLengthWithoutProperties(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;)I

    move-result v1

    invoke-direct {p0, p1, v1, v0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;->remainingLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;II)I

    move-result v2

    invoke-static {v2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->encodedPacketLength(I)I

    move-result v3

    const/4 v4, 0x0

    move v10, v0

    move v9, v2

    move v8, v3

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->getMaximumPacketSize()I

    move-result v0

    if-le v8, v0, :cond_1

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {p0, p1, v10, v11}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;->propertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;II)I

    move-result v10

    if-ltz v10, :cond_0

    invoke-direct {p0, p1, v1, v10}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;->remainingLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;II)I

    move-result v9

    invoke-static {v9}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->encodedPacketLength(I)I

    move-result v8

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->getMaximumPacketSize()I

    move-result p2

    invoke-static {p1, v8, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->maximumPacketSizeExceeded(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;II)Lcom/hivemq/client/mqtt/exceptions/MqttEncodeException;

    move-result-object p1

    throw p1

    :cond_1
    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v5 .. v11}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;IIII)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;IIII)Lio/netty/buffer/ByteBuf;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;",
            "IIII)",
            "Lio/netty/buffer/ByteBuf;"
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p2

    invoke-interface {p2, p3, p3}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;Lio/netty/buffer/ByteBuf;III)V

    return-object p2
.end method

.method public bridge synthetic encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 3
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;

    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public abstract encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;Lio/netty/buffer/ByteBuf;III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lio/netty/buffer/ByteBuf;",
            "III)V"
        }
    .end annotation
.end method

.method public encodeOmissibleProperties(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;Lio/netty/buffer/ByteBuf;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Lio/netty/buffer/ByteBuf;",
            "I)V"
        }
    .end annotation

    if-nez p3, :cond_0

    invoke-interface {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;->getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    :cond_0
    return-void
.end method

.method public omissiblePropertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)I"
        }
    .end annotation

    invoke-interface {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;->getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->encodedLength()I

    move-result p1

    return p1
.end method

.method public abstract propertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)I"
        }
    .end annotation
.end method

.method public propertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;II)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;II)I"
        }
    .end annotation

    .line 1
    if-eqz p3, :cond_1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-interface {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;->getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->encodedLength()I

    move-result p1

    sub-int/2addr p2, p1

    :cond_1
    return p2
.end method

.method public propertyLengthWithHeader(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;I)I"
        }
    .end annotation

    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->encodedLengthWithHeader(I)I

    move-result p1

    return p1
.end method

.method public abstract remainingLengthWithoutProperties(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)I"
        }
    .end annotation
.end method
