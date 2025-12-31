.class public Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;
.super Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder<",
        "Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;",
        ">;"
    }
.end annotation


# static fields
.field private static final FIXED_HEADER:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->PUBLISH:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    invoke-virtual {v0}, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->getCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    sput v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;->FIXED_HEADER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3MessageEncoder;-><init>()V

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
    sget v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;->FIXED_HEADER:I

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

.method private encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;)V
    .locals 2

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->encode(Lio/netty/buffer/ByteBuf;)V

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_MOST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId;->getPacketIdentifier()I

    move-result p1

    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;II)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;II)Lio/netty/buffer/ByteBuf;
    .locals 2

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

    invoke-virtual {p0, p1, p2, p4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;I)V

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

    invoke-virtual {p0, p1, p2, p4}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;I)V

    return-object p2
.end method

.method public bridge synthetic encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;Lio/netty/buffer/ByteBuf;I)V
    .locals 0

    .line 3
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-virtual {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;I)V

    return-void
.end method

.method public encode(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;->encodeFixedHeader(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;I)V

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;->encodeVariableHeader(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;)V

    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;->encodePayload(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public bridge synthetic remainingLength(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/codec/encoder/mqtt3/Mqtt3PublishEncoder;->remainingLength(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)I

    move-result p1

    return p1
.end method

.method public remainingLength(Lcom/hivemq/client/internal/mqtt/message/publish/MqttStatefulPublish;)I
    .locals 3

    .line 2
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage;->stateless()Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getTopic()Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->encodedLength()I

    move-result v0

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getQos()Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    move-result-object v1

    sget-object v2, Lcom/hivemq/client/mqtt/datatypes/MqttQos;->AT_MOST_ONCE:Lcom/hivemq/client/mqtt/datatypes/MqttQos;

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x2

    :cond_0
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublish;->getRawPayload()Ljava/nio/ByteBuffer;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    add-int/2addr v0, p1

    :cond_1
    return v0
.end method
