.class final Lio/netty/handler/codec/compression/CompressionUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkChecksum(Lio/netty/handler/codec/compression/ByteBufChecksum;Lio/netty/buffer/ByteBuf;I)V
    .locals 2

    invoke-interface {p0}, Ljava/util/zip/Checksum;->reset()V

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lio/netty/handler/codec/compression/ByteBufChecksum;->update(Lio/netty/buffer/ByteBuf;II)V

    invoke-interface {p0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide p0

    long-to-int p1, p0

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p0, Lio/netty/handler/codec/compression/DecompressionException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "stream corrupted: mismatching checksum: %d (expected: %d)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static safeNioBuffer(Lio/netty/buffer/ByteBuf;)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static safeNioBuffer(Lio/netty/buffer/ByteBuf;II)Ljava/nio/ByteBuffer;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    :goto_0
    return-object p0
.end method
