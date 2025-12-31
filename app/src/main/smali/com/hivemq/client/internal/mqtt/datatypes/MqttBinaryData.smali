.class public abstract Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static decode(Lio/netty/buffer/ByteBuf;Z)Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    if-ge v1, v0, :cond_1

    return-object v2

    :cond_1
    invoke-static {v0, p1}, Lcom/hivemq/client/internal/util/ByteBufferUtil;->allocate(IZ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p1
.end method

.method public static decode(Lio/netty/buffer/ByteBuf;)[B
    .locals 3

    .line 2
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    if-ge v1, v0, :cond_1

    return-object v2

    :cond_1
    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->readBytes([B)Lio/netty/buffer/ByteBuf;

    return-object v0
.end method

.method public static encode(Ljava/nio/ByteBuffer;Lio/netty/buffer/ByteBuf;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/netty/buffer/ByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public static encode([BLio/netty/buffer/ByteBuf;)V
    .locals 1

    .line 2
    array-length v0, p0

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    invoke-virtual {p1, p0}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public static encodeEmpty(Lio/netty/buffer/ByteBuf;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public static encodedLength(Ljava/nio/ByteBuffer;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public static encodedLength([B)I
    .locals 0

    .line 2
    array-length p0, p0

    add-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public static isInRange(Ljava/nio/ByteBuffer;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isInRange([B)Z
    .locals 1

    .line 2
    array-length p0, p0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
