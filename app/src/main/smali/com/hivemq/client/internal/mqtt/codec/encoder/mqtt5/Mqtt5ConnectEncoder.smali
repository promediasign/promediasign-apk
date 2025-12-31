.class public Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;
.super Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder<",
        "Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;",
        ">;"
    }
.end annotation


# static fields
.field private static final FIXED_HEADER:I


# instance fields
.field private final publishEncoder:Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->CONNECT:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    sput v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->FIXED_HEADER:I

    return-void
.end method

.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;)V
    .locals 0

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->publishEncoder:Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5PublishEncoder;

    return-void
.end method

.method private encode(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;IIIII)Lio/netty/buffer/ByteBuf;
    .locals 7

    .line 3
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

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;IIII)V

    return-object p2
.end method

.method private encode(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;IIII)V
    .locals 0

    .line 4
    invoke-direct {p0, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->encodeFixedHeader(Lio/netty/buffer/ByteBuf;I)V

    invoke-direct {p0, p1, p2, p4, p6}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;II)V

    invoke-direct {p0, p1, p2, p5}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->encodePayload(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;I)V

    return-void
.end method

.method private encodeFixedHeader(Lio/netty/buffer/ByteBuf;I)V
    .locals 1

    sget v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->FIXED_HEADER:I

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-static {p2, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->encode(ILio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method private encodePayload(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->getClientIdentifier()Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->encodeWillPublish(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lio/netty/buffer/ByteBuf;I)V

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawSimpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->getRawUsername()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->encodeNullable(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)V

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->getRawPassword()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->encodeNullable(Ljava/nio/ByteBuffer;Lio/netty/buffer/ByteBuf;)V

    :cond_0
    return-void
.end method

.method private encodeProperties(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;II)V
    .locals 7

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-static {p3, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->encode(ILio/netty/buffer/ByteBuf;)V

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getSessionExpiryInterval()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/16 v1, 0x11

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeIntProperty(IJJLio/netty/buffer/ByteBuf;)V

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->getEnhancedAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;

    move-result-object p3

    if-eqz p3, :cond_0

    const/16 v1, 0x15

    invoke-virtual {p3}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;->getMethod()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeProperty(ILcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)V

    const/16 v1, 0x16

    invoke-virtual {p3}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;->getRawData()Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-static {v1, p3, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeNullableProperty(ILjava/nio/ByteBuffer;Lio/netty/buffer/ByteBuf;)V

    :cond_0
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRestrictions()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    move-result-object p3

    sget-object v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    if-eq p3, v0, :cond_1

    invoke-virtual {p3}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getReceiveMaximum()I

    move-result v0

    const v1, 0xffff

    const/16 v2, 0x21

    invoke-static {v2, v0, v1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeShortProperty(IIILio/netty/buffer/ByteBuf;)V

    invoke-virtual {p3}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getMaximumPacketSize()I

    move-result v0

    int-to-long v2, v0

    const-wide/32 v4, 0x10000004

    const/16 v1, 0x27

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeIntProperty(IJJLio/netty/buffer/ByteBuf;)V

    const/16 v0, 0x22

    invoke-virtual {p3}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getTopicAliasMaximum()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeShortProperty(IIILio/netty/buffer/ByteBuf;)V

    const/16 v0, 0x19

    invoke-virtual {p3}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->isRequestResponseInformation()Z

    move-result v1

    invoke-static {v0, v1, v2, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeBooleanProperty(IZZLio/netty/buffer/ByteBuf;)V

    invoke-virtual {p3}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->isRequestProblemInformation()Z

    move-result p3

    const/4 v0, 0x1

    const/16 v1, 0x17

    invoke-static {v1, p3, v0, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->encodeBooleanProperty(IZZLio/netty/buffer/ByteBuf;)V

    :cond_1
    if-nez p4, :cond_2

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    :cond_2
    return-void
.end method

.method private encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;II)V
    .locals 4

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    sget-object v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->PROTOCOL_NAME:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v1, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    const/4 v1, 0x5

    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawSimpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->getRawUsername()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v3

    if-eqz v3, :cond_0

    const/16 v2, 0x80

    :cond_0
    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->getRawPassword()Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    or-int/lit8 v2, v2, 0x40

    :cond_1
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawWillPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->isCleanStart()Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v2, v2, 0x2

    :cond_2
    invoke-virtual {p2, v2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getKeepAlive()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->encodeProperties(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;II)V

    return-void
.end method

.method private encodeWillPublish(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lio/netty/buffer/ByteBuf;I)V
    .locals 0

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawWillPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    return-void
.end method

.method private propertyLength(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getSessionExpiryInterval()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->intPropertyEncodedLength(JJ)I

    move-result v1

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRestrictions()Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    move-result-object v0

    sget-object v2, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->DEFAULT:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;

    if-eq v0, v2, :cond_0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getReceiveMaximum()I

    move-result v2

    const v3, 0xffff

    invoke-static {v2, v3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->shortPropertyEncodedLength(II)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getMaximumPacketSize()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x10000004

    invoke-static {v2, v3, v4, v5}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->intPropertyEncodedLength(JJ)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->getTopicAliasMaximum()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->shortPropertyEncodedLength(II)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->isRequestResponseInformation()Z

    move-result v2

    invoke-static {v2, v3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->booleanPropertyEncodedLength(ZZ)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnectRestrictions;->isRequestProblemInformation()Z

    move-result v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->booleanPropertyEncodedLength(ZZ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->encodedLength()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->getEnhancedAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;->getMethod()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->propertyEncodedLength(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;->getRawData()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5MessageEncoderUtil;->nullablePropertyEncodedLength(Ljava/nio/ByteBuffer;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_1
    return v0
.end method

.method private propertyLength(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;II)I
    .locals 1

    .line 2
    if-eqz p3, :cond_1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->getUserProperties()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertiesImpl;->encodedLength()I

    move-result p1

    sub-int/2addr p2, p1

    :cond_1
    return p2
.end method

.method private remainingLength(III)I
    .locals 0

    invoke-static {p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->encodedLengthWithHeader(I)I

    move-result p2

    add-int/2addr p2, p1

    const/4 p1, -0x1

    if-ne p3, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->encodedLengthWithHeader(I)I

    move-result p1

    :goto_0
    add-int/2addr p2, p1

    return p2
.end method

.method private remainingLengthWithoutProperties(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;)I
    .locals 3

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->getClientIdentifier()Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->encodedLength()I

    move-result p1

    add-int/lit8 p1, p1, 0xa

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawSimpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->getRawUsername()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v2

    invoke-static {v2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->nullableEncodedLength(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->getRawPassword()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->nullableEncodedLength(Ljava/nio/ByteBuffer;)I

    move-result p1

    add-int/2addr p1, v2

    :cond_0
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawWillPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    return p1
.end method

.method private willPropertyLength(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;)I
    .locals 0

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawWillPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public bridge synthetic encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;

    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;
    .locals 9

    .line 2
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->propertyLength(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->willPropertyLength(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;)I

    move-result v7

    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->remainingLengthWithoutProperties(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;)I

    move-result v1

    invoke-direct {p0, v1, v0, v7}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->remainingLength(III)I

    move-result v2

    invoke-static {v2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->encodedPacketLength(I)I

    move-result v3

    const/4 v4, 0x0

    move v6, v0

    move v5, v2

    move v4, v3

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->getMaximumPacketSize()I

    move-result v0

    if-le v4, v0, :cond_1

    add-int/lit8 v8, v8, 0x1

    invoke-direct {p0, p1, v6, v8}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->propertyLength(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;II)I

    move-result v6

    if-ltz v6, :cond_0

    invoke-direct {p0, v1, v6, v7}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->remainingLength(III)I

    move-result v5

    invoke-static {v5}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->encodedPacketLength(I)I

    move-result v4

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->getMaximumPacketSize()I

    move-result p2

    invoke-static {p1, v4, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->maximumPacketSizeExceeded(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;II)Lcom/hivemq/client/mqtt/exceptions/MqttEncodeException;

    move-result-object p1

    throw p1

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt5/Mqtt5ConnectEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;IIIII)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method
