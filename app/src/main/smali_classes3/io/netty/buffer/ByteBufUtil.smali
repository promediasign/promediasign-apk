.class public final Lio/netty/buffer/ByteBufUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;,
        Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;,
        Lio/netty/buffer/ByteBufUtil$HexUtil;
    }
.end annotation


# static fields
.field private static final BYTE_ARRAYS:Lio/netty/util/concurrent/FastThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/FastThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field

.field static final DEFAULT_ALLOCATOR:Lio/netty/buffer/ByteBufAllocator;

.field private static final FIND_NON_ASCII:Lio/netty/util/ByteProcessor;

.field private static final MAX_BYTES_PER_CHAR_UTF8:I

.field private static final MAX_CHAR_BUFFER_SIZE:I

.field static final MAX_TL_ARRAY_LEN:I = 0x400

.field private static final THREAD_LOCAL_BUFFER_SIZE:I

.field static final WRITE_CHUNK_SIZE:I = 0x2000

.field private static final WRITE_UTF_UNKNOWN:B = 0x3ft

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lio/netty/buffer/ByteBufUtil;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/ByteBufUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v1, Lio/netty/buffer/ByteBufUtil$1;

    invoke-direct {v1}, Lio/netty/buffer/ByteBufUtil$1;-><init>()V

    sput-object v1, Lio/netty/buffer/ByteBufUtil;->BYTE_ARRAYS:Lio/netty/util/concurrent/FastThreadLocal;

    sget-object v1, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1}, Lio/netty/util/CharsetUtil;->encoder(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v1

    float-to-int v1, v1

    sput v1, Lio/netty/buffer/ByteBufUtil;->MAX_BYTES_PER_CHAR_UTF8:I

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isAndroid()Z

    move-result v1

    const-string v2, "pooled"

    const-string v3, "unpooled"

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v4, "io.netty.allocator.type"

    invoke-static {v4, v1}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "-Dio.netty.allocator.type: {}"

    if-eqz v3, :cond_1

    sget-object v2, Lio/netty/buffer/UnpooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/UnpooledByteBufAllocator;

    :goto_1
    invoke-interface {v0, v4, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/PooledByteBufAllocator;

    goto :goto_1

    :cond_2
    sget-object v2, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/PooledByteBufAllocator;

    const-string v3, "-Dio.netty.allocator.type: pooled (unknown: {})"

    invoke-interface {v0, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    sput-object v2, Lio/netty/buffer/ByteBufUtil;->DEFAULT_ALLOCATOR:Lio/netty/buffer/ByteBufAllocator;

    const-string v1, "io.netty.threadLocalDirectBufferSize"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lio/netty/buffer/ByteBufUtil;->THREAD_LOCAL_BUFFER_SIZE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "-Dio.netty.threadLocalDirectBufferSize: {}"

    invoke-interface {v0, v2, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "io.netty.maxThreadLocalCharBufferSize"

    const/16 v2, 0x4000

    invoke-static {v1, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lio/netty/buffer/ByteBufUtil;->MAX_CHAR_BUFFER_SIZE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "-Dio.netty.maxThreadLocalCharBufferSize: {}"

    invoke-interface {v0, v2, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lio/netty/buffer/ByteBufUtil$2;

    invoke-direct {v0}, Lio/netty/buffer/ByteBufUtil$2;-><init>()V

    sput-object v0, Lio/netty/buffer/ByteBufUtil;->FIND_NON_ASCII:Lio/netty/util/ByteProcessor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$500()I
    .locals 1

    sget v0, Lio/netty/buffer/ByteBufUtil;->THREAD_LOCAL_BUFFER_SIZE:I

    return v0
.end method

.method public static appendPrettyHexDump(Ljava/lang/StringBuilder;Lio/netty/buffer/ByteBuf;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lio/netty/buffer/ByteBufUtil;->appendPrettyHexDump(Ljava/lang/StringBuilder;Lio/netty/buffer/ByteBuf;II)V

    return-void
.end method

.method public static appendPrettyHexDump(Ljava/lang/StringBuilder;Lio/netty/buffer/ByteBuf;II)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lio/netty/buffer/ByteBufUtil$HexUtil;->access$300(Ljava/lang/StringBuilder;Lio/netty/buffer/ByteBuf;II)V

    return-void
.end method

.method private static checkCharSequenceBounds(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 4

    .line 1
    sub-int v0, p2, p1

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p1, v0, v1}, Lio/netty/util/internal/MathUtil;->isOutOfBounds(III)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 15
    .line 16
    const-string v1, "expected: 0 <= start("

    .line 17
    .line 18
    const-string v2, ") <= end ("

    .line 19
    .line 20
    const-string v3, ") <= seq.length("

    .line 21
    .line 22
    invoke-static {v1, p1, v2, p2, v3}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 p0, 0x29

    .line 34
    .line 35
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method

.method public static compare(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)I
    .locals 11

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    ushr-int/lit8 v3, v2, 0x2

    and-int/lit8 v2, v2, 0x3

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v5

    if-lez v3, :cond_5

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    shl-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    if-ne v7, v8, :cond_2

    if-eqz v6, :cond_1

    invoke-static {p0, p1, v4, v5, v3}, Lio/netty/buffer/ByteBufUtil;->compareUintBigEndian(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;III)J

    move-result-wide v6

    goto :goto_1

    :cond_1
    invoke-static {p0, p1, v4, v5, v3}, Lio/netty/buffer/ByteBufUtil;->compareUintLittleEndian(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;III)J

    move-result-wide v6

    goto :goto_1

    :cond_2
    if-eqz v6, :cond_3

    invoke-static {p0, p1, v4, v5, v3}, Lio/netty/buffer/ByteBufUtil;->compareUintBigEndianA(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;III)J

    move-result-wide v6

    goto :goto_1

    :cond_3
    invoke-static {p0, p1, v4, v5, v3}, Lio/netty/buffer/ByteBufUtil;->compareUintBigEndianB(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;III)J

    move-result-wide v6

    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_4

    const-wide/32 p0, -0x80000000

    invoke-static {p0, p1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    long-to-int p1, p0

    return p1

    :cond_4
    add-int/2addr v4, v3

    add-int/2addr v5, v3

    :cond_5
    add-int/2addr v2, v4

    :goto_2
    if-ge v4, v2, :cond_7

    invoke-virtual {p0, v4}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v3

    invoke-virtual {p1, v5}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v6

    sub-int/2addr v3, v6

    if-eqz v3, :cond_6

    return v3

    :cond_6
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    sub-int/2addr v0, v1

    return v0
.end method

.method private static compareUintBigEndian(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;III)J
    .locals 6

    add-int/2addr p4, p2

    :goto_0
    const-wide/16 v0, 0x0

    if-ge p2, p4, :cond_1

    invoke-virtual {p0, p2}, Lio/netty/buffer/ByteBuf;->getUnsignedInt(I)J

    move-result-wide v2

    invoke-virtual {p1, p3}, Lio/netty/buffer/ByteBuf;->getUnsignedInt(I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    return-wide v2

    :cond_0
    add-int/lit8 p2, p2, 0x4

    add-int/lit8 p3, p3, 0x4

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private static compareUintBigEndianA(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;III)J
    .locals 6

    add-int/2addr p4, p2

    :goto_0
    const-wide/16 v0, 0x0

    if-ge p2, p4, :cond_1

    invoke-virtual {p0, p2}, Lio/netty/buffer/ByteBuf;->getUnsignedInt(I)J

    move-result-wide v2

    invoke-virtual {p1, p3}, Lio/netty/buffer/ByteBuf;->getUnsignedIntLE(I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    return-wide v2

    :cond_0
    add-int/lit8 p2, p2, 0x4

    add-int/lit8 p3, p3, 0x4

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private static compareUintBigEndianB(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;III)J
    .locals 6

    add-int/2addr p4, p2

    :goto_0
    const-wide/16 v0, 0x0

    if-ge p2, p4, :cond_1

    invoke-virtual {p0, p2}, Lio/netty/buffer/ByteBuf;->getUnsignedIntLE(I)J

    move-result-wide v2

    invoke-virtual {p1, p3}, Lio/netty/buffer/ByteBuf;->getUnsignedInt(I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    return-wide v2

    :cond_0
    add-int/lit8 p2, p2, 0x4

    add-int/lit8 p3, p3, 0x4

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private static compareUintLittleEndian(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;III)J
    .locals 6

    add-int/2addr p4, p2

    :goto_0
    const-wide/16 v0, 0x0

    if-ge p2, p4, :cond_1

    invoke-virtual {p0, p2}, Lio/netty/buffer/ByteBuf;->getUnsignedIntLE(I)J

    move-result-wide v2

    invoke-virtual {p1, p3}, Lio/netty/buffer/ByteBuf;->getUnsignedIntLE(I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    return-wide v2

    :cond_0
    add-int/lit8 p2, p2, 0x4

    add-int/lit8 p3, p3, 0x4

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static copy(Lio/netty/util/AsciiString;ILio/netty/buffer/ByteBuf;I)V
    .locals 3

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v0

    invoke-static {p1, p3, v0}, Lio/netty/util/internal/MathUtil;->isOutOfBounds(III)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dst"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {p2, v0, p0, p3}, Lio/netty/buffer/ByteBuf;->writeBytes([BII)Lio/netty/buffer/ByteBuf;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "expected: 0 <= srcIdx("

    const-string v1, ") <= srcIdx + length("

    const-string v2, ") <= srcLen("

    .line 1
    invoke-static {v0, p1, v1, p3, v2}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static copy(Lio/netty/util/AsciiString;ILio/netty/buffer/ByteBuf;II)V
    .locals 2

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v0

    invoke-static {p1, p4, v0}, Lio/netty/util/internal/MathUtil;->isOutOfBounds(III)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dst"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {p2, p3, v0, p0, p4}, Lio/netty/buffer/ByteBuf;->setBytes(I[BII)Lio/netty/buffer/ByteBuf;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string p3, "expected: 0 <= srcIdx("

    const-string v0, ") <= srcIdx + length("

    const-string v1, ") <= srcLen("

    .line 9
    invoke-static {p3, p1, v0, p4, v1}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static copy(Lio/netty/util/AsciiString;Lio/netty/buffer/ByteBuf;)V
    .locals 2

    .line 17
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lio/netty/buffer/ByteBufUtil;->copy(Lio/netty/util/AsciiString;ILio/netty/buffer/ByteBuf;I)V

    return-void
.end method

.method public static decodeHexByte(Ljava/lang/CharSequence;I)B
    .locals 0

    invoke-static {p0, p1}, Lio/netty/util/internal/StringUtil;->decodeHexByte(Ljava/lang/CharSequence;I)B

    move-result p0

    return p0
.end method

.method public static decodeHexDump(Ljava/lang/CharSequence;)[B
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lio/netty/util/internal/StringUtil;->decodeHexDump(Ljava/lang/CharSequence;II)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeHexDump(Ljava/lang/CharSequence;II)[B
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lio/netty/util/internal/StringUtil;->decodeHexDump(Ljava/lang/CharSequence;II)[B

    move-result-object p0

    return-object p0
.end method

.method public static decodeString(Lio/netty/buffer/ByteBuf;IILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    if-nez p2, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result p0

    add-int/2addr p0, p1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lio/netty/buffer/ByteBufUtil;->threadLocalTempArray(I)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lio/netty/buffer/ByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    const/4 p0, 0x0

    :goto_0
    sget-object p1, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v1, p0, p2}, Ljava/lang/String;-><init>([BIII)V

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object p1
.end method

.method public static encodeString(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, v0}, Lio/netty/buffer/ByteBufUtil;->encodeString0(Lio/netty/buffer/ByteBufAllocator;ZLjava/nio/CharBuffer;Ljava/nio/charset/Charset;I)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public static encodeString(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;I)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lio/netty/buffer/ByteBufUtil;->encodeString0(Lio/netty/buffer/ByteBufAllocator;ZLjava/nio/CharBuffer;Ljava/nio/charset/Charset;I)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    return-object p0
.end method

.method public static encodeString0(Lio/netty/buffer/ByteBufAllocator;ZLjava/nio/CharBuffer;Ljava/nio/charset/Charset;I)Lio/netty/buffer/ByteBuf;
    .locals 4

    invoke-static {p3}, Lio/netty/util/CharsetUtil;->encoder(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p3

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p3}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v2

    float-to-double v2, v2

    mul-double v0, v0, v2

    double-to-int v0, v0

    add-int/2addr v0, p4

    if-eqz p1, :cond_0

    invoke-interface {p0, v0}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p4

    const/4 v0, 0x1

    invoke-virtual {p3, p2, p1, v0}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/nio/charset/CoderResult;->throwException()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p3, p1}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p2}, Ljava/nio/charset/CoderResult;->throwException()V

    :cond_2
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result p2

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p1

    add-int/2addr p2, p1

    sub-int/2addr p2, p4

    invoke-virtual {p0, p2}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :goto_2
    :try_start_1
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->release()Z

    throw p1
.end method

.method public static ensureWritableSuccess(I)Z
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static equals(Lio/netty/buffer/ByteBuf;ILio/netty/buffer/ByteBuf;II)Z
    .locals 7

    .line 1
    if-ltz p1, :cond_8

    if-ltz p3, :cond_8

    if-ltz p4, :cond_8

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    sub-int/2addr v0, p4

    const/4 v1, 0x0

    if-lt v0, p1, :cond_7

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    sub-int/2addr v0, p4

    if-ge v0, p3, :cond_0

    goto :goto_3

    :cond_0
    ushr-int/lit8 v0, p4, 0x3

    and-int/lit8 p4, p4, 0x7

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    if-ne v2, v3, :cond_2

    :goto_0
    if-lez v0, :cond_4

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, p3}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    return v1

    :cond_1
    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-lez v0, :cond_4

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, p3}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lio/netty/buffer/ByteBufUtil;->swapLong(J)J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    return v1

    :cond_3
    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-lez p4, :cond_6

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v0

    invoke-virtual {p2, p3}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v2

    if-eq v0, v2, :cond_5

    return v1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p4, p4, -0x1

    goto :goto_2

    :cond_6
    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_3
    return v1

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "All indexes and lengths must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static equals(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Z
    .locals 3

    .line 2
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-static {p0, v1, p1, v2, v0}, Lio/netty/buffer/ByteBufUtil;->equals(Lio/netty/buffer/ByteBuf;ILio/netty/buffer/ByteBuf;II)Z

    move-result p0

    return p0
.end method

.method private static firstIndexOf(Lio/netty/buffer/ByteBuf;IIB)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-ge p1, p2, :cond_1

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p2, p1

    new-instance v0, Lio/netty/util/ByteProcessor$IndexOfProcessor;

    invoke-direct {v0, p3}, Lio/netty/util/ByteProcessor$IndexOfProcessor;-><init>(B)V

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/buffer/ByteBuf;->forEachByte(IILio/netty/util/ByteProcessor;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method private static getBytes(Ljava/nio/ByteBuffer;[BIILjava/io/OutputStream;I)V
    .locals 1

    .line 1
    :cond_0
    invoke-static {p3, p5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p4, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr p5, v0

    if-gtz p5, :cond_0

    return-void
.end method

.method public static getBytes(Lio/netty/buffer/ByteBuf;)[B
    .locals 2

    .line 2
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/netty/buffer/ByteBufUtil;->getBytes(Lio/netty/buffer/ByteBuf;II)[B

    move-result-object p0

    return-object p0
.end method

.method public static getBytes(Lio/netty/buffer/ByteBuf;II)[B
    .locals 1

    .line 3
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lio/netty/buffer/ByteBufUtil;->getBytes(Lio/netty/buffer/ByteBuf;IIZ)[B

    move-result-object p0

    return-object p0
.end method

.method public static getBytes(Lio/netty/buffer/ByteBuf;IIZ)[B
    .locals 3

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    invoke-static {p1, p2, v0}, Lio/netty/util/internal/MathUtil;->isOutOfBounds(III)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p3, :cond_1

    if-nez p1, :cond_1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result p3

    add-int/2addr p3, p1

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object p0

    add-int/2addr p2, p3

    invoke-static {p0, p3, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p2}, Lio/netty/util/internal/PlatformDependent;->allocateUninitializedArray(I)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->getBytes(I[B)Lio/netty/buffer/ByteBuf;

    return-object p2

    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p3, "expected: 0 <= start("

    const-string v1, ") <= start + length("

    const-string v2, ") <= buf.capacity("

    .line 4
    invoke-static {p3, p1, v1, p2, v2}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x29

    .line 5
    invoke-static {p1, v0, p2}, Lch/qos/logback/core/joran/util/a;->r(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static hashCode(Lio/netty/buffer/ByteBuf;)I
    .locals 6

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x2

    and-int/lit8 v0, v0, 0x3

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    if-lez v1, :cond_1

    mul-int/lit8 v3, v3, 0x1f

    invoke-virtual {p0, v2}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_1
    if-lez v1, :cond_1

    mul-int/lit8 v3, v3, 0x1f

    invoke-virtual {p0, v2}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lio/netty/buffer/ByteBufUtil;->swapInt(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-lez v0, :cond_2

    mul-int/lit8 v3, v3, 0x1f

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v2}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v2

    add-int/2addr v3, v2

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    goto :goto_2

    :cond_2
    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    move v5, v3

    :goto_3
    return v5
.end method

.method public static hexDump(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/netty/buffer/ByteBufUtil;->hexDump(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hexDump(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lio/netty/buffer/ByteBufUtil$HexUtil;->access$000(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hexDump([B)Ljava/lang/String;
    .locals 2

    .line 3
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lio/netty/buffer/ByteBufUtil;->hexDump([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hexDump([BII)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Lio/netty/buffer/ByteBufUtil$HexUtil;->access$100([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static indexOf(Lio/netty/buffer/ByteBuf;IIB)I
    .locals 0

    .line 1
    if-gt p1, p2, :cond_0

    invoke-static {p0, p1, p2, p3}, Lio/netty/buffer/ByteBufUtil;->firstIndexOf(Lio/netty/buffer/ByteBuf;IIB)I

    move-result p0

    return p0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lio/netty/buffer/ByteBufUtil;->lastIndexOf(Lio/netty/buffer/ByteBuf;IIB)I

    move-result p0

    return p0
.end method

.method public static indexOf(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)I
    .locals 5

    .line 2
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    invoke-static {p0, v2, p1, v3, v4}, Lio/netty/buffer/ByteBufUtil;->equals(Lio/netty/buffer/ByteBuf;ILio/netty/buffer/ByteBuf;II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p0

    add-int/2addr p0, v1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private static isAscii(Lio/netty/buffer/ByteBuf;II)Z
    .locals 1

    sget-object v0, Lio/netty/buffer/ByteBufUtil;->FIND_NON_ASCII:Lio/netty/util/ByteProcessor;

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/buffer/ByteBuf;->forEachByte(IILio/netty/util/ByteProcessor;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isText(Lio/netty/buffer/ByteBuf;IILjava/nio/charset/Charset;)Z
    .locals 2

    const-string v0, "buf"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "charset"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    add-int/2addr v1, v0

    if-ltz p1, :cond_3

    if-ltz p2, :cond_3

    sub-int/2addr v1, p2

    if-gt p1, v1, :cond_3

    sget-object v0, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lio/netty/buffer/ByteBufUtil;->isUtf8(Lio/netty/buffer/ByteBuf;II)Z

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2}, Lio/netty/buffer/ByteBufUtil;->isAscii(Lio/netty/buffer/ByteBuf;II)Z

    move-result p0

    return p0

    :cond_1
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-static {p3, v0, v0}, Lio/netty/util/CharsetUtil;->decoder(Ljava/nio/charset/Charset;Ljava/nio/charset/CodingErrorAction;Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p3

    :try_start_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0, p2}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0, p0, p1, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result p0

    invoke-virtual {v0, p0, p2}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_0
    return v1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    throw p0
    :try_end_2
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const/4 p0, 0x0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p3, "index: "

    const-string v0, " length: "

    .line 1
    invoke-static {p3, p1, v0, p2}, LA/g;->f(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isText(Lio/netty/buffer/ByteBuf;Ljava/nio/charset/Charset;)Z
    .locals 2

    .line 9
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lio/netty/buffer/ByteBufUtil;->isText(Lio/netty/buffer/ByteBuf;IILjava/nio/charset/Charset;)Z

    move-result p0

    return p0
.end method

.method private static isUtf8(Lio/netty/buffer/ByteBuf;II)Z
    .locals 9

    add-int/2addr p2, p1

    :cond_0
    :goto_0
    if-ge p1, p2, :cond_e

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    and-int/lit16 v2, v1, 0xe0

    const/16 v3, 0xc0

    const/16 v4, 0x80

    const/4 v5, 0x0

    if-ne v2, v3, :cond_4

    if-lt v0, p2, :cond_2

    return v5

    :cond_2
    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v0

    and-int/2addr v0, v3

    if-eq v0, v4, :cond_3

    return v5

    :cond_3
    and-int/lit16 v0, v1, 0xff

    const/16 v1, 0xc2

    if-ge v0, v1, :cond_0

    return v5

    :cond_4
    and-int/lit16 v2, v1, 0xf0

    const/16 v6, 0xe0

    if-ne v2, v6, :cond_9

    add-int/lit8 v2, p2, -0x2

    if-le v0, v2, :cond_5

    return v5

    :cond_5
    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v0

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, v2}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v2

    and-int/lit16 v6, v0, 0xc0

    if-ne v6, v4, :cond_8

    and-int/2addr v2, v3

    if-eq v2, v4, :cond_6

    goto :goto_1

    :cond_6
    and-int/lit8 v1, v1, 0xf

    if-nez v1, :cond_7

    and-int/lit16 v2, v0, 0xff

    const/16 v3, 0xa0

    if-ge v2, v3, :cond_7

    return v5

    :cond_7
    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x9f

    if-le v0, v1, :cond_0

    :cond_8
    :goto_1
    return v5

    :cond_9
    and-int/lit16 v2, v1, 0xf8

    const/16 v6, 0xf0

    if-ne v2, v6, :cond_d

    add-int/lit8 v2, p2, -0x3

    if-le v0, v2, :cond_a

    return v5

    :cond_a
    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v0

    add-int/lit8 v7, p1, 0x3

    invoke-virtual {p0, v2}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v2

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, v7}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v7

    and-int/lit16 v8, v0, 0xc0

    if-ne v8, v4, :cond_d

    and-int/2addr v2, v3

    if-ne v2, v4, :cond_d

    and-int/lit16 v2, v7, 0xc0

    if-eq v2, v4, :cond_b

    goto :goto_2

    :cond_b
    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xf4

    if-gt v1, v2, :cond_d

    if-ne v1, v6, :cond_c

    and-int/lit16 v3, v0, 0xff

    const/16 v4, 0x90

    if-lt v3, v4, :cond_d

    :cond_c
    if-ne v1, v2, :cond_0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x8f

    if-le v0, v1, :cond_0

    :cond_d
    :goto_2
    return v5

    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method private static lastIndexOf(Lio/netty/buffer/ByteBuf;IIB)I
    .locals 1

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ltz p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p2

    new-instance v0, Lio/netty/util/ByteProcessor$IndexOfProcessor;

    invoke-direct {v0, p3}, Lio/netty/util/ByteProcessor$IndexOfProcessor;-><init>(B)V

    invoke-virtual {p0, p2, p1, v0}, Lio/netty/buffer/ByteBuf;->forEachByteDesc(IILio/netty/util/ByteProcessor;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static prettyHexDump(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/netty/buffer/ByteBufUtil;->prettyHexDump(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static prettyHexDump(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lio/netty/buffer/ByteBufUtil$HexUtil;->access$200(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readBytes(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-interface {p0, p2}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    :try_start_0
    invoke-virtual {p1, p0}, Lio/netty/buffer/ByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->release()Z

    throw p1
.end method

.method public static readBytes(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteBuffer;IILjava/io/OutputStream;)V
    .locals 7

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p4, p0, p1, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x2000

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    const/16 p2, 0x400

    if-le p3, p2, :cond_2

    invoke-interface {p0}, Lio/netty/buffer/ByteBufAllocator;->isDirectBufferPooled()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0, v4}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v2

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v3

    move-object v1, p1

    move-object v5, p4

    move v6, p3

    invoke-static/range {v1 .. v6}, Lio/netty/buffer/ByteBufUtil;->getBytes(Ljava/nio/ByteBuffer;[BIILjava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->release()Z

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->release()Z

    throw p1

    :cond_2
    :goto_0
    invoke-static {v4}, Lio/netty/buffer/ByteBufUtil;->threadLocalTempArray(I)[B

    move-result-object v2

    const/4 v3, 0x0

    move-object v1, p1

    move-object v5, p4

    move v6, p3

    invoke-static/range {v1 .. v6}, Lio/netty/buffer/ByteBufUtil;->getBytes(Ljava/nio/ByteBuffer;[BIILjava/io/OutputStream;I)V

    :goto_1
    return-void
.end method

.method public static reserveAndWriteUtf8(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;I)I
    .locals 2

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, p2}, Lio/netty/buffer/ByteBufUtil;->reserveAndWriteUtf8Seq(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;III)I

    move-result p0

    return p0
.end method

.method public static reserveAndWriteUtf8(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;III)I
    .locals 0

    .line 2
    invoke-static {p1, p2, p3}, Lio/netty/buffer/ByteBufUtil;->checkCharSequenceBounds(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1, p2, p3, p4}, Lio/netty/buffer/ByteBufUtil;->reserveAndWriteUtf8Seq(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;III)I

    move-result p0

    return p0
.end method

.method private static reserveAndWriteUtf8Seq(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;III)I
    .locals 1

    :goto_0
    instance-of v0, p0, Lio/netty/buffer/WrappedCompositeByteBuf;

    if-eqz v0, :cond_0

    :goto_1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lio/netty/buffer/AbstractByteBuf;

    if-eqz v0, :cond_1

    check-cast p0, Lio/netty/buffer/AbstractByteBuf;

    invoke-virtual {p0, p4}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable0(I)V

    iget p4, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    invoke-static {p0, p4, p1, p2, p3}, Lio/netty/buffer/ByteBufUtil;->writeUtf8(Lio/netty/buffer/AbstractByteBuf;ILjava/lang/CharSequence;II)I

    move-result p1

    iget p2, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/2addr p2, p1

    iput p2, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    return p1

    :cond_1
    instance-of v0, p0, Lio/netty/buffer/WrappedByteBuf;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    array-length p0, p1

    return p0
.end method

.method public static setShortBE(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 2

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->setShort(II)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->setShortLE(II)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static swapInt(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    return p0
.end method

.method public static swapLong(J)J
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static swapMedium(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0x10

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, p0

    or-int/2addr v0, v1

    ushr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    const/high16 v0, 0x800000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    or-int/2addr p0, v0

    :cond_0
    return p0
.end method

.method public static swapShort(S)S
    .locals 0

    invoke-static {p0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p0

    return p0
.end method

.method public static threadLocalDirectBuffer()Lio/netty/buffer/ByteBuf;
    .locals 1

    sget v0, Lio/netty/buffer/ByteBufUtil;->THREAD_LOCAL_BUFFER_SIZE:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;->newInstance()Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;->newInstance()Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static threadLocalTempArray(I)[B
    .locals 1

    const/16 v0, 0x400

    if-gt p0, v0, :cond_0

    sget-object p0, Lio/netty/buffer/ByteBufUtil;->BYTE_ARRAYS:Lio/netty/util/concurrent/FastThreadLocal;

    invoke-virtual {p0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent;->allocateUninitializedArray(I)[B

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static utf8ByteCount(Ljava/lang/CharSequence;II)I
    .locals 3

    instance-of v0, p0, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_0

    sub-int/2addr p2, p1

    return p2

    :cond_0
    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x80

    if-ge v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sub-int p1, v0, p1

    if-ge v0, p2, :cond_2

    invoke-static {p0, v0, p2}, Lio/netty/buffer/ByteBufUtil;->utf8BytesNonAscii(Ljava/lang/CharSequence;II)I

    move-result p0

    add-int/2addr p1, p0

    :cond_2
    return p1
.end method

.method public static utf8Bytes(Ljava/lang/CharSequence;)I
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lio/netty/buffer/ByteBufUtil;->utf8ByteCount(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method public static utf8Bytes(Ljava/lang/CharSequence;II)I
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lio/netty/buffer/ByteBufUtil;->checkCharSequenceBounds(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lio/netty/buffer/ByteBufUtil;->utf8ByteCount(Ljava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method private static utf8BytesNonAscii(Ljava/lang/CharSequence;II)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_5

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x800

    if-ge v1, v2, :cond_0

    rsub-int/lit8 v1, v1, 0x7f

    ushr-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    move v0, v1

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->isSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    if-ne p1, p2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x3

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return v0
.end method

.method public static utf8MaxBytes(I)I
    .locals 1

    .line 1
    sget v0, Lio/netty/buffer/ByteBufUtil;->MAX_BYTES_PER_CHAR_UTF8:I

    mul-int p0, p0, v0

    return p0
.end method

.method public static utf8MaxBytes(Ljava/lang/CharSequence;)I
    .locals 0

    .line 2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-static {p0}, Lio/netty/buffer/ByteBufUtil;->utf8MaxBytes(I)I

    move-result p0

    return p0
.end method

.method public static writeAscii(Lio/netty/buffer/AbstractByteBuf;ILjava/lang/CharSequence;I)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int/lit8 v1, p1, 0x1

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lio/netty/util/AsciiString;->c2b(C)B

    move-result v2

    invoke-virtual {p0, p1, v2}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    add-int/lit8 v0, v0, 0x1

    move p1, v1

    goto :goto_0

    :cond_0
    return p3
.end method

.method public static writeAscii(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)I
    .locals 2

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    instance-of v1, p1, Lio/netty/util/AsciiString;

    if-eqz v1, :cond_0

    check-cast p1, Lio/netty/util/AsciiString;

    invoke-virtual {p1}, Lio/netty/util/AsciiString;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result p1

    invoke-virtual {p0, v1, p1, v0}, Lio/netty/buffer/ByteBuf;->writeBytes([BII)Lio/netty/buffer/ByteBuf;

    return v0

    :cond_0
    :goto_0
    instance-of v1, p0, Lio/netty/buffer/WrappedCompositeByteBuf;

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v1, p0, Lio/netty/buffer/AbstractByteBuf;

    if-eqz v1, :cond_2

    check-cast p0, Lio/netty/buffer/AbstractByteBuf;

    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable0(I)V

    iget v1, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    invoke-static {p0, v1, p1, v0}, Lio/netty/buffer/ByteBufUtil;->writeAscii(Lio/netty/buffer/AbstractByteBuf;ILjava/lang/CharSequence;I)I

    move-result p1

    iget v0, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    return p1

    :cond_2
    instance-of v1, p0, Lio/netty/buffer/WrappedByteBuf;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    array-length p0, p1

    return p0
.end method

.method public static writeAscii(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/CharSequence;)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0, v0}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-static {p0, p1}, Lio/netty/buffer/ByteBufUtil;->writeAscii(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)I

    return-object p0
.end method

.method public static writeMediumBE(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 2

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeMedium(I)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeMediumLE(I)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static writeShortBE(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 2

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeShortLE(I)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static writeUtf8(Lio/netty/buffer/AbstractByteBuf;ILjava/lang/CharSequence;I)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lio/netty/buffer/ByteBufUtil;->writeUtf8(Lio/netty/buffer/AbstractByteBuf;ILjava/lang/CharSequence;II)I

    move-result p0

    return p0
.end method

.method public static writeUtf8(Lio/netty/buffer/AbstractByteBuf;ILjava/lang/CharSequence;II)I
    .locals 7

    .line 2
    move v0, p1

    :goto_0
    if-ge p3, p4, :cond_5

    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x80

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    int-to-byte v1, v1

    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    move v0, v2

    goto :goto_1

    :cond_0
    const/16 v3, 0x800

    if-ge v1, v3, :cond_1

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v4, v1, 0x6

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    invoke-virtual {p0, v0, v4}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    add-int/lit8 v0, v0, 0x2

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {p0, v3, v1}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->isSurrogate(C)Z

    move-result v3

    const/16 v4, 0x3f

    if-eqz v3, :cond_4

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0, v4}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    move v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 p3, p3, 0x1

    if-ne p3, p4, :cond_3

    add-int/lit8 p2, v0, 0x1

    invoke-virtual {p0, v0, v4}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    move v0, p2

    goto :goto_2

    :cond_3
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lio/netty/buffer/ByteBufUtil;->writeUtf8Surrogate(Lio/netty/buffer/AbstractByteBuf;ICC)I

    move-result v0

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v5, v1, 0xc

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    invoke-virtual {p0, v0, v5}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    add-int/lit8 v5, v0, 0x2

    shr-int/lit8 v6, v1, 0x6

    and-int/2addr v4, v6

    or-int/2addr v4, v2

    int-to-byte v4, v4

    invoke-virtual {p0, v3, v4}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    add-int/lit8 v0, v0, 0x3

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {p0, v5, v1}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    sub-int/2addr v0, p1

    return v0
.end method

.method public static writeUtf8(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)I
    .locals 3

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0}, Lio/netty/buffer/ByteBufUtil;->utf8MaxBytes(I)I

    move-result v2

    invoke-static {p0, p1, v1, v0, v2}, Lio/netty/buffer/ByteBufUtil;->reserveAndWriteUtf8Seq(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;III)I

    move-result p0

    return p0
.end method

.method public static writeUtf8(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;II)I
    .locals 1

    .line 4
    invoke-static {p1, p2, p3}, Lio/netty/buffer/ByteBufUtil;->checkCharSequenceBounds(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    sub-int v0, p3, p2

    invoke-static {v0}, Lio/netty/buffer/ByteBufUtil;->utf8MaxBytes(I)I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Lio/netty/buffer/ByteBufUtil;->reserveAndWriteUtf8Seq(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;III)I

    move-result p0

    return p0
.end method

.method public static writeUtf8(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/CharSequence;)Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 5
    invoke-static {p1}, Lio/netty/buffer/ByteBufUtil;->utf8MaxBytes(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-interface {p0, v0}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object p0

    invoke-static {p0, p1}, Lio/netty/buffer/ByteBufUtil;->writeUtf8(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)I

    return-object p0
.end method

.method private static writeUtf8Surrogate(Lio/netty/buffer/AbstractByteBuf;ICC)I
    .locals 3

    invoke-static {p3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    const/16 v1, 0x3f

    if-nez v0, :cond_1

    add-int/lit8 p2, p1, 0x1

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    add-int/lit8 p1, p1, 0x2

    invoke-static {p3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p3, 0x3f

    :cond_0
    invoke-virtual {p0, p2, p3}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    return p1

    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p2

    add-int/lit8 p3, p1, 0x1

    shr-int/lit8 v0, p2, 0x12

    or-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v2, p2, 0xc

    and-int/2addr v2, v1

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {p0, p3, v2}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    add-int/lit8 p3, p1, 0x3

    shr-int/lit8 v2, p2, 0x6

    and-int/2addr v2, v1

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-virtual {p0, v0, v2}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    add-int/lit8 p1, p1, 0x4

    and-int/2addr p2, v1

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    invoke-virtual {p0, p3, p2}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    return p1
.end method
