.class public abstract Lcom/hivemq/client/internal/mqtt/datatypes/MqttVariableByteInteger;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static decode(Lio/netty/buffer/ByteBuf;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    const/16 v2, 0x15

    if-le v0, v2, :cond_1

    const/4 p0, -0x2

    return p0

    :cond_1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v2

    and-int/lit8 v3, v2, 0x7f

    shl-int/2addr v3, v0

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x7

    int-to-byte v0, v0

    and-int/lit16 v3, v2, 0x80

    if-nez v3, :cond_0

    const/4 p0, 0x7

    if-le v0, p0, :cond_3

    if-nez v2, :cond_3

    const/4 p0, -0x3

    return p0

    :cond_3
    return v1
.end method

.method public static encode(ILio/netty/buffer/ByteBuf;)V
    .locals 1

    :cond_0
    and-int/lit8 v0, p0, 0x7f

    ushr-int/lit8 p0, p0, 0x7

    if-lez p0, :cond_1

    or-int/lit16 v0, v0, 0x80

    :cond_1
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    if-gtz p0, :cond_0

    return-void
.end method

.method public static encodedLength(I)I
    .locals 1

    const/16 v0, 0x7f

    if-le p0, v0, :cond_2

    const/16 v0, 0x3fff

    if-le p0, v0, :cond_1

    const v0, 0x1fffff

    if-le p0, v0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    :goto_0
    return p0
.end method
