.class public Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;
.super Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder<",
        "Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;",
        ">;"
    }
.end annotation


# static fields
.field private static final FIXED_HEADER:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PUBLISH:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    sput v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->FIXED_HEADER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;-><init>()V

    return-void
.end method

.method private encodeFixedHeader(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;I)V
    .locals 2

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->isDup()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->getCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    or-int/2addr p1, v1

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->isRetain()Z

    move-result v0

    if-eqz v0, :cond_1

    or-int/lit8 p1, p1, 0x1

    :cond_1
    sget v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->FIXED_HEADER:I

    or-int/2addr p1, v0

    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-static {p3, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->encode(ILio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method private encodePayload(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;)V
    .locals 1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawPayload()Ljava/nio/ByteBuffer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    :cond_0
    return-void
.end method

.method private encodeProperties(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;II)V
    .locals 1

    invoke-static {p3, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->encode(ILio/netty/buffer/ByteBuf;)V

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object p3

    check-cast p3, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {p0, p3, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->encodeFixedProperties(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Lio/netty/buffer/ByteBuf;)V

    invoke-virtual {p0, p1, p2, p4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;->encodeOmissibleProperties(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;Lio/netty/buffer/ByteBuf;I)V

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->getTopicAlias()I

    move-result p3

    const/16 p4, 0x23

    const/4 v0, 0x0

    invoke-static {p4, p3, v0, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeShortProperty(IIILio/netty/buffer/ByteBuf;)V

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->getSubscriptionIdentifiers()Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList;->size()I

    move-result p3

    if-ge v0, p3, :cond_0

    const/16 p3, 0xb

    invoke-interface {p1, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList;->get(I)I

    move-result p4

    invoke-static {p3, p4, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeVariableByteIntegerProperty(IILio/netty/buffer/ByteBuf;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;II)V
    .locals 2

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->getTopicAlias()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->isNewTopicAlias()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->encodeEmpty(Lio/netty/buffer/ByteBuf;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    :goto_1
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_MOST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId;->getPacketIdentifier()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->encodeProperties(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;II)V

    return-void
.end method


# virtual methods
.method public bridge synthetic encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;IIII)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-virtual/range {p0 .. p6}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;IIII)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;IIII)Lio/netty/buffer/ByteBuf;
    .locals 7

    .line 2
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawPayload()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    sub-int/2addr p3, v1

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object p2

    invoke-interface {p2, p3, p3}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object p2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;III)V

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->wrappedBuffer(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    const/4 p3, 0x2

    new-array p3, p3, [Lio/netty/buffer/ByteBuf;

    const/4 p4, 0x0

    aput-object p2, p3, p4

    const/4 p2, 0x1

    aput-object p1, p3, p2

    invoke-static {p3}, Lio/netty/buffer/Unpooled;->wrappedUnmodifiableBuffer([Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1

    :cond_0
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

    invoke-virtual/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;III)V

    return-object p2
.end method

.method public bridge synthetic encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;Lio/netty/buffer/ByteBuf;III)V
    .locals 0

    .line 3
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-virtual/range {p0 .. p5}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;III)V

    return-void
.end method

.method public encode(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;III)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->encodeFixedHeader(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;I)V

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;II)V

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->encodePayload(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public final encodeFixedProperties(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;Lio/netty/buffer/ByteBuf;)V
    .locals 6

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawMessageExpiryInterval()J

    move-result-wide v1

    const-wide v3, 0x7fffffffffffffffL

    const/4 v0, 0x2

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeIntProperty(IJJLio/netty/buffer/ByteBuf;)V

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawPayloadFormatIndicator()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeNullableProperty(ILcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;Lio/netty/buffer/ByteBuf;)V

    const/4 v0, 0x3

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawContentType()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeNullableProperty(ILcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)V

    const/16 v0, 0x8

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawResponseTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeNullableProperty(ILcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)V

    const/16 v0, 0x9

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawCorrelationData()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeNullableProperty(ILjava/nio/ByteBuffer;Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public final fixedPropertyLength(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)I
    .locals 4

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawMessageExpiryInterval()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v0, v1, v2, v3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->intPropertyEncodedLength(JJ)I

    move-result v0

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawPayloadFormatIndicator()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;

    move-result-object v1

    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->nullablePropertyEncodedLength(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PayloadFormatIndicator;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawContentType()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->nullablePropertyEncodedLength(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawResponseTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->nullablePropertyEncodedLength(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawCorrelationData()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->nullablePropertyEncodedLength(Ljava/nio/ByteBuffer;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic propertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->propertyLength(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)I

    move-result p1

    return p1
.end method

.method public propertyLength(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)I
    .locals 3

    .line 2
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {p0, v0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->fixedPropertyLength(Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;->omissiblePropertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->getTopicAlias()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->shortPropertyEncodedLength(II)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->getSubscriptionIdentifiers()Lcom/hivemq/client/internal/util/collections/ImmutableIntList;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    invoke-interface {p1, v2}, Lcom/hivemq/client/internal/util/collections/ImmutableIntList;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->variableByteIntegerPropertyEncodedLength(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public bridge synthetic remainingLengthWithoutProperties(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;->remainingLengthWithoutProperties(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)I

    move-result p1

    return p1
.end method

.method public remainingLengthWithoutProperties(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)I
    .locals 3

    .line 2
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->getTopicAlias()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;->isNewTopicAlias()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->encodedLength()I

    move-result p1

    :goto_1
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v1

    sget-object v2, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_MOST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-eq v1, v2, :cond_2

    add-int/lit8 p1, p1, 0x2

    :cond_2
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawPayload()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    add-int/2addr p1, v0

    :cond_3
    return p1
.end method
