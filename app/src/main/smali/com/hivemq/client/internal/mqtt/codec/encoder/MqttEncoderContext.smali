.class public Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final allocator:Lio/netty/buffer/ByteBufAllocator;

.field private maximumPacketSize:I


# direct methods
.method public constructor <init>(Lio/netty/buffer/ByteBufAllocator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x10000004

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->maximumPacketSize:I

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->allocator:Lio/netty/buffer/ByteBufAllocator;

    return-void
.end method


# virtual methods
.method public getAllocator()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->allocator:Lio/netty/buffer/ByteBufAllocator;

    return-object v0
.end method

.method public getMaximumPacketSize()I
    .locals 1

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->maximumPacketSize:I

    return v0
.end method

.method public setMaximumPacketSize(I)V
    .locals 0

    iput p1, p0, Lcom/hivemq/client/internal/mqtt/codec/encoder/MqttEncoderContext;->maximumPacketSize:I

    return-void
.end method
