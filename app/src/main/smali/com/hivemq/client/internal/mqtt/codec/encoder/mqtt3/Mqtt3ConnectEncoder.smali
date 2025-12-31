.class public Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder;
.super Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder<",
        "Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;",
        ">;"
    }
.end annotation


# static fields
.field private static final FIXED_HEADER:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->CONNECT:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    sput v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder;->FIXED_HEADER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder;-><init>()V

    return-void
.end method

.method private encodeFixedHeader(Lio/netty/buffer/ByteBuf;I)V
    .locals 1

    sget v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder;->FIXED_HEADER:I

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-static {p2, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;->encode(ILio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method private encodePayload(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;)V
    .locals 1

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;->getClientIdentifier()Lcom/hivemq/client/internal/mqtt/datatypes/MqttClientIdentifierImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder;->encodeWillPublish(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;)V

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawSimpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->getRawUsername()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->encodeNullable(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Lio/netty/buffer/ByteBuf;)V

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->getRawPassword()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoderUtil;->encodeNullable(Ljava/nio/ByteBuffer;Lio/netty/buffer/ByteBuf;)V

    :cond_0
    return-void
.end method

.method private encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;)V
    .locals 3

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    sget-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->PROTOCOL_NAME:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-virtual {v0, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawSimpleAuth()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->getRawUsername()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v1, 0x80

    :cond_0
    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;->getRawPassword()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_1

    or-int/lit8 v1, v1, 0x40

    :cond_1
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawWillPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->isCleanStart()Z

    move-result v0

    if-eqz v0, :cond_2

    or-int/lit8 v1, v1, 0x2

    :cond_2
    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getKeepAlive()I

    move-result p1

    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method private encodeWillPublish(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;)V
    .locals 0

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;->getRawWillPublish()Lcom/hivemq/client/internal/mqtt/message/publish/MqttWillPublish;

    return-void
.end method


# virtual methods
.method public bridge synthetic encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;Lio/netty/buffer/ByteBuf;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;

    invoke-virtual {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;I)V

    return-void
.end method

.method public encode(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder;->encodeFixedHeader(Lio/netty/buffer/ByteBuf;I)V

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder;->encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;)V

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder;->encodePayload(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public bridge synthetic remainingLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3ConnectEncoder;->remainingLength(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;)I

    move-result p1

    return p1
.end method

.method public remainingLength(Lcom/hivemq/client/internal/mqtt/message/connect/MqttStatefulConnect;)I
    .locals 3

    .line 2
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
