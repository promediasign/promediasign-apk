.class public Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5AuthEncoder;
.super Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason<",
        "Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;",
        ">;"
    }
.end annotation


# static fields
.field private static final FIXED_HEADER:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->AUTH:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    sput v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5AuthEncoder;->FIXED_HEADER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;-><init>()V

    return-void
.end method

.method private encodeFixedHeader(Lio/netty/buffer/ByteBuf;I)V
    .locals 1

    sget v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5AuthEncoder;->FIXED_HEADER:I

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-static {p2, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->encode(ILio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method private encodeProperties(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lio/netty/buffer/ByteBuf;II)V
    .locals 1

    invoke-static {p3, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->encode(ILio/netty/buffer/ByteBuf;)V

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->getMethod()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object p3

    const/16 v0, 0x15

    invoke-static {v0, p3, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeProperty(ILcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)V

    const/16 p3, 0x16

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->getRawData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p3, v0, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeNullableProperty(ILjava/nio/ByteBuffer;Lio/netty/buffer/ByteBuf;)V

    invoke-virtual {p0, p1, p2, p4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;->encodeOmissibleProperties(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;Lio/netty/buffer/ByteBuf;I)V

    return-void
.end method

.method private encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lio/netty/buffer/ByteBuf;II)V
    .locals 1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason$WithCode;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;->getCode()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5AuthEncoder;->encodeProperties(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lio/netty/buffer/ByteBuf;II)V

    return-void
.end method


# virtual methods
.method public bridge synthetic encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;Lio/netty/buffer/ByteBuf;III)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    invoke-virtual/range {p0 .. p5}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5AuthEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lio/netty/buffer/ByteBuf;III)V

    return-void
.end method

.method public encode(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lio/netty/buffer/ByteBuf;III)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5AuthEncoder;->encodeFixedHeader(Lio/netty/buffer/ByteBuf;I)V

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5AuthEncoder;->encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lio/netty/buffer/ByteBuf;II)V

    return-void
.end method

.method public bridge synthetic propertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5AuthEncoder;->propertyLength(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)I

    move-result p1

    return p1
.end method

.method public propertyLength(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)I
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->getMethod()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->propertyEncodedLength(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)I

    move-result v0

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->getRawData()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->nullablePropertyEncodedLength(Ljava/nio/ByteBuffer;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageWithUserPropertiesEncoder$WithReason;->omissiblePropertyLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties$WithReason;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic remainingLengthWithoutProperties(Lcom/hivemq/client/internal/mqtt/message/MqttMessage$WithUserProperties;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5AuthEncoder;->remainingLengthWithoutProperties(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)I

    move-result p1

    return p1
.end method

.method public remainingLengthWithoutProperties(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)I
    .locals 0

    .line 2
    const/4 p1, 0x1

    return p1
.end method
