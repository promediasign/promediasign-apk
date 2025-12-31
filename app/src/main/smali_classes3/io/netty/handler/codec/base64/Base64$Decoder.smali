.class final Lio/netty/handler/codec/base64/Base64$Decoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/ByteProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/base64/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Decoder"
.end annotation


# instance fields
.field private final b4:[B

.field private b4Posn:I

.field private decodabet:[B

.field private dest:Lio/netty/buffer/ByteBuf;

.field private outBuffPosn:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->b4:[B

    return-void
.end method

.method public synthetic constructor <init>(Lio/netty/handler/codec/base64/Base64$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/netty/handler/codec/base64/Base64$Decoder;-><init>()V

    return-void
.end method

.method private static decode4to3([BLio/netty/buffer/ByteBuf;I[B)I
    .locals 8

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/4 v1, 0x1

    aget-byte v2, p0, v1

    const/4 v3, 0x2

    aget-byte v4, p0, v3

    const-string v5, "not encoded in Base64"

    const/16 v6, 0x3d

    if-ne v4, v6, :cond_0

    :try_start_0
    aget-byte p0, p3, v0

    and-int/lit16 p0, p0, 0xff

    shl-int/2addr p0, v3

    aget-byte p3, p3, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 p3, p3, 0xff

    ushr-int/lit8 p3, p3, 0x4

    or-int/2addr p0, p3

    invoke-virtual {p1, p2, p0}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    return v1

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 v1, 0x3

    aget-byte p0, p0, v1

    if-ne p0, v6, :cond_2

    aget-byte p0, p3, v2

    :try_start_1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    aget-byte v0, p3, v0

    and-int/lit8 v0, v0, 0x3f

    shl-int/2addr v0, v3

    and-int/lit16 v1, p0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    and-int/lit8 p0, p0, 0xf

    shl-int/lit8 p0, p0, 0x4

    or-int/2addr p0, v0

    aget-byte p3, p3, v4

    and-int/lit16 p3, p3, 0xfc

    ushr-int/2addr p3, v3

    or-int/2addr p0, p3

    goto :goto_0

    :cond_1
    aget-byte v0, p3, v0

    and-int/lit8 v0, v0, 0x3f

    shl-int/2addr v0, v3

    and-int/lit16 v1, p0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    and-int/lit8 p0, p0, 0xf

    shl-int/lit8 p0, p0, 0x4

    aget-byte p3, p3, v4
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    and-int/lit16 p3, p3, 0xfc

    ushr-int/2addr p3, v3

    or-int/2addr p0, p3

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    :goto_0
    invoke-virtual {p1, p2, p0}, Lio/netty/buffer/ByteBuf;->setShort(II)Lio/netty/buffer/ByteBuf;

    return v3

    :catch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v6, v7, :cond_3

    aget-byte v0, p3, v0

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x12

    aget-byte v2, p3, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xc

    or-int/2addr v0, v2

    aget-byte v2, p3, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v0, v2

    aget-byte p0, p3, p0

    and-int/lit16 p0, p0, 0xff

    :goto_1
    or-int/2addr p0, v0

    goto :goto_2

    :cond_3
    aget-byte v2, p3, v2

    aget-byte v4, p3, v4

    aget-byte v0, p3, v0

    and-int/lit8 v0, v0, 0x3f

    shl-int/2addr v0, v3

    and-int/lit8 v3, v2, 0xf

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v0, v3

    and-int/lit16 v2, v2, 0xf0

    ushr-int/lit8 v2, v2, 0x4

    or-int/2addr v0, v2

    and-int/lit8 v2, v4, 0x3

    shl-int/lit8 v2, v2, 0x16

    or-int/2addr v0, v2

    and-int/lit16 v2, v4, 0xfc

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v0, v2

    aget-byte p0, p3, p0
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    goto :goto_1

    :goto_2
    invoke-virtual {p1, p2, p0}, Lio/netty/buffer/ByteBuf;->setMedium(II)Lio/netty/buffer/ByteBuf;

    return v1

    :catch_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public decode(Lio/netty/buffer/ByteBuf;IILio/netty/buffer/ByteBufAllocator;Lio/netty/handler/codec/base64/Base64Dialect;)Lio/netty/buffer/ByteBuf;
    .locals 1

    invoke-static {p3}, Lio/netty/handler/codec/base64/Base64;->decodedBufferSize(I)I

    move-result v0

    invoke-interface {p4, v0}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p4

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p4, v0}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object p4

    iput-object p4, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->dest:Lio/netty/buffer/ByteBuf;

    invoke-static {p5}, Lio/netty/handler/codec/base64/Base64;->access$100(Lio/netty/handler/codec/base64/Base64Dialect;)[B

    move-result-object p4

    iput-object p4, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->decodabet:[B

    :try_start_0
    invoke-virtual {p1, p2, p3, p0}, Lio/netty/buffer/ByteBuf;->forEachByte(IILio/netty/util/ByteProcessor;)I

    iget-object p1, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->dest:Lio/netty/buffer/ByteBuf;

    iget p2, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->outBuffPosn:I

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->dest:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->release()Z

    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public process(B)Z
    .locals 5

    .line 1
    if-lez p1, :cond_2

    .line 2
    .line 3
    iget-object v0, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->decodabet:[B

    .line 4
    .line 5
    aget-byte v1, v0, p1

    .line 6
    .line 7
    const/4 v2, -0x5

    .line 8
    if-lt v1, v2, :cond_2

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    const/4 v3, 0x1

    .line 12
    if-lt v1, v2, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->b4:[B

    .line 15
    .line 16
    iget v2, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->b4Posn:I

    .line 17
    .line 18
    add-int/lit8 v4, v2, 0x1

    .line 19
    .line 20
    iput v4, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->b4Posn:I

    .line 21
    .line 22
    aput-byte p1, v1, v2

    .line 23
    .line 24
    const/4 v2, 0x3

    .line 25
    if-le v4, v2, :cond_1

    .line 26
    .line 27
    iget v2, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->outBuffPosn:I

    .line 28
    .line 29
    iget-object v4, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->dest:Lio/netty/buffer/ByteBuf;

    .line 30
    .line 31
    invoke-static {v1, v4, v2, v0}, Lio/netty/handler/codec/base64/Base64$Decoder;->decode4to3([BLio/netty/buffer/ByteBuf;I[B)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/2addr v2, v0

    .line 36
    iput v2, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->outBuffPosn:I

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lio/netty/handler/codec/base64/Base64$Decoder;->b4Posn:I

    .line 40
    .line 41
    const/16 v1, 0x3d

    .line 42
    .line 43
    if-eq p1, v1, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v3, 0x0

    .line 47
    :cond_1
    :goto_0
    return v3

    .line 48
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v2, "invalid Base64 input character: "

    .line 53
    .line 54
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    and-int/lit16 p1, p1, 0xff

    .line 58
    .line 59
    int-to-short p1, p1

    .line 60
    const-string v2, " (decimal)"

    .line 61
    .line 62
    invoke-static {v2, p1, v1}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0
.end method
