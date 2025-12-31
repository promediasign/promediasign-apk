.class public Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5UnsubscribeEncoder;
.super Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder<",
        "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;",
        ">;"
    }
.end annotation


# static fields
.field private static final FIXED_HEADER:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->UNSUBSCRIBE:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5UnsubscribeEncoder;->FIXED_HEADER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;-><init>()V

    return-void
.end method

.method private encodeFixedHeader(Lio/netty/buffer/ByteBuf;I)V
    .locals 1

    sget v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5UnsubscribeEncoder;->FIXED_HEADER:I

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-static {p2, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->encode(ILio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method private encodePayload(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;Lio/netty/buffer/ByteBuf;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method private encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;Lio/netty/buffer/ByteBuf;II)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public bridge synthetic encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;Lio/netty/buffer/ByteBuf;III)V
    .locals 6

    .line 1
    invoke-static {p1}, LA/g;->x(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5UnsubscribeEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;Lio/netty/buffer/ByteBuf;III)V

    return-void
.end method

.method public encode(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;Lio/netty/buffer/ByteBuf;III)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5UnsubscribeEncoder;->encodeFixedHeader(Lio/netty/buffer/ByteBuf;I)V

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5UnsubscribeEncoder;->encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;Lio/netty/buffer/ByteBuf;II)V

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5UnsubscribeEncoder;->encodePayload(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public bridge synthetic propertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;)I
    .locals 0

    .line 1
    invoke-static {p1}, LA/g;->x(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5UnsubscribeEncoder;->propertyLength(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;)I

    move-result p1

    return p1
.end method

.method public propertyLength(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder;->omissiblePropertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic remainingLengthWithoutProperties(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;)I
    .locals 0

    .line 1
    invoke-static {p1}, LA/g;->x(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5UnsubscribeEncoder;->remainingLengthWithoutProperties(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;)I

    move-result p1

    return p1
.end method

.method public remainingLengthWithoutProperties(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;)I
    .locals 0

    .line 2
    const/4 p1, 0x0

    throw p1
.end method
