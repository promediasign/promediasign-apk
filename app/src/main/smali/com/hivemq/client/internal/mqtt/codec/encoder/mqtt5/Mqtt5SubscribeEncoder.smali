.class public Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5SubscribeEncoder;
.super Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder<",
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;",
        ">;"
    }
.end annotation


# static fields
.field private static final FIXED_HEADER:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->SUBSCRIBE:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5SubscribeEncoder;->FIXED_HEADER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;-><init>()V

    return-void
.end method

.method private encodeFixedHeader(Lio/netty/buffer/ByteBuf;I)V
    .locals 1

    sget v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5SubscribeEncoder;->FIXED_HEADER:I

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-static {p2, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->encode(ILio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method private encodePayload(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;Lio/netty/buffer/ByteBuf;)V
    .locals 3

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;->getSubscriptions()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->getTopicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->encodeSubscriptionOptions()B

    move-result v1

    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private encodeProperties(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;Lio/netty/buffer/ByteBuf;II)V
    .locals 3

    invoke-static {p3, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->encode(ILio/netty/buffer/ByteBuf;)V

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;->getSubscriptionIdentifier()I

    move-result p3

    const-wide/16 v0, -0x1

    const/16 v2, 0xb

    invoke-static {v2, p3, v0, v1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeVariableByteIntegerProperty(IIJLio/netty/buffer/ByteBuf;)V

    invoke-virtual {p0, p1, p2, p4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;->encodeOmissibleProperties(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;Lio/netty/buffer/ByteBuf;I)V

    return-void
.end method

.method private encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;Lio/netty/buffer/ByteBuf;II)V
    .locals 1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId;->getPacketIdentifier()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5SubscribeEncoder;->encodeProperties(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;Lio/netty/buffer/ByteBuf;II)V

    return-void
.end method


# virtual methods
.method public bridge synthetic encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;Lio/netty/buffer/ByteBuf;III)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;

    invoke-virtual/range {p0 .. p5}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5SubscribeEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;Lio/netty/buffer/ByteBuf;III)V

    return-void
.end method

.method public encode(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;Lio/netty/buffer/ByteBuf;III)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5SubscribeEncoder;->encodeFixedHeader(Lio/netty/buffer/ByteBuf;I)V

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5SubscribeEncoder;->encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;Lio/netty/buffer/ByteBuf;II)V

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5SubscribeEncoder;->encodePayload(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public bridge synthetic propertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5SubscribeEncoder;->propertyLength(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;)I

    move-result p1

    return p1
.end method

.method public propertyLength(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;)I
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;->omissiblePropertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;)I

    move-result v0

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;->getSubscriptionIdentifier()I

    move-result p1

    const/4 v1, -0x1

    invoke-static {p1, v1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->variableByteIntegerPropertyEncodedLength(II)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic remainingLengthWithoutProperties(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5SubscribeEncoder;->remainingLengthWithoutProperties(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;)I

    move-result p1

    return p1
.end method

.method public remainingLengthWithoutProperties(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;)I
    .locals 3

    .line 2
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;->getSubscriptions()Lcom/hivemq/client/internal/util/collections/ImmutableList;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Lcom/hivemq/client/internal/util/collections/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscription;->getTopicFilter()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->encodedLength()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method
