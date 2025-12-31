.class public Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttPingReqEncoder;
.super Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder<",
        "Lcom/hivemq/client/internal/mqtt/message/ping/MqttPingReq;",
        ">;"
    }
.end annotation


# static fields
.field private static final PACKET:Lio/netty/buffer/ByteBuf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lio/netty/buffer/UnpooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/UnpooledByteBufAllocator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lio/netty/buffer/AbstractByteBufAllocator;->ioBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->PINGREQ:Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5MessageType;->getCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttPingReqEncoder;->PACKET:Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttMessageEncoder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic encode(Lcom/hivemq/client/internal/mqtt/message/MqttMessage;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/ping/MqttPingReq;

    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttPingReqEncoder;->encode(Lcom/hivemq/client/internal/mqtt/message/ping/MqttPingReq;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public encode(Lcom/hivemq/client/internal/mqtt/message/ping/MqttPingReq;Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 2
    sget-object p1, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttPingReqEncoder;->PACKET:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->retainedDuplicate()Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method
