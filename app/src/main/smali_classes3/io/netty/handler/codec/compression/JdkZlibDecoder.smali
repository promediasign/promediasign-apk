.class public Lio/netty/handler/codec/compression/JdkZlibDecoder;
.super Lio/netty/handler/codec/compression/ZlibDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;
    }
.end annotation


# static fields
.field private static final FCOMMENT:I = 0x10

.field private static final FEXTRA:I = 0x4

.field private static final FHCRC:I = 0x2

.field private static final FNAME:I = 0x8

.field private static final FRESERVED:I = 0xe0


# instance fields
.field private final crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

.field private decideZlibOrNone:Z

.field private final decompressConcatenated:Z

.field private final dictionary:[B

.field private volatile finished:Z

.field private flags:I

.field private gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

.field private inflater:Ljava/util/zip/Inflater;

.field private xlen:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 2
    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/compression/ZlibWrapper;)V
    .locals 2

    .line 3
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/compression/ZlibWrapper;I)V
    .locals 2

    .line 4
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/compression/ZlibWrapper;Z)V
    .locals 2

    .line 5
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/compression/ZlibWrapper;ZI)V
    .locals 1

    .line 6
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    return-void
.end method

.method private constructor <init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V
    .locals 2

    .line 7
    invoke-direct {p0, p4}, Lio/netty/handler/codec/compression/ZlibDecoder;-><init>(I)V

    sget-object p4, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->HEADER_START:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    iput-object p4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    const/4 p4, -0x1

    iput p4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->flags:I

    iput p4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->xlen:I

    const-string p4, "wrapper"

    invoke-static {p1, p4}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-boolean p3, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->decompressConcatenated:Z

    sget-object p3, Lio/netty/handler/codec/compression/JdkZlibDecoder$1;->$SwitchMap$io$netty$handler$codec$compression$ZlibWrapper:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p3, p3, p4

    const/4 p4, 0x1

    if-eq p3, p4, :cond_3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p3, v0, :cond_2

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    iput-boolean p4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->decideZlibOrNone:Z

    :goto_0
    iput-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    goto :goto_2

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Only GZIP or ZLIB is supported, but you used "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/util/zip/Inflater;

    invoke-direct {p1}, Ljava/util/zip/Inflater;-><init>()V

    :goto_1
    iput-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/util/zip/Inflater;

    invoke-direct {p1, p4}, Ljava/util/zip/Inflater;-><init>(Z)V

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/util/zip/Inflater;

    invoke-direct {p1, p4}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    invoke-static {p1}, Lio/netty/handler/codec/compression/ByteBufChecksum;->wrapChecksum(Ljava/util/zip/Checksum;)Lio/netty/handler/codec/compression/ByteBufChecksum;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    :goto_2
    iput-object p2, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->dictionary:[B

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    .line 8
    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lio/netty/handler/codec/compression/ZlibWrapper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 2

    .line 9
    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lio/netty/handler/codec/compression/ZlibWrapper;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 10
    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2

    .line 11
    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    return-void
.end method

.method private static looksLikeZlib(S)Z
    .locals 2

    and-int/lit16 v0, p0, 0x7800

    const/16 v1, 0x7800

    if-ne v0, v1, :cond_0

    rem-int/lit8 p0, p0, 0x1f

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private readGZIPFooter(Lio/netty/buffer/ByteBuf;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/handler/codec/compression/JdkZlibDecoder;->verifyCrc(Lio/netty/buffer/ByteBuf;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_0
    const/4 v1, 0x4

    .line 16
    if-ge v2, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    mul-int/lit8 v3, v2, 0x8

    .line 23
    .line 24
    shl-int/2addr v1, v3

    .line 25
    or-int/2addr v0, v1

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->getTotalOut()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-ne v0, p1, :cond_2

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    return p1

    .line 39
    :cond_2
    new-instance v1, Lio/netty/handler/codec/compression/DecompressionException;

    .line 40
    .line 41
    const-string v2, "Number of bytes mismatch. Expected: "

    .line 42
    .line 43
    const-string v3, ", Got: "

    .line 44
    .line 45
    invoke-static {v2, v0, v3, p1}, LA/g;->f(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {v1, p1}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v1
.end method

.method private readGZIPHeader(Lio/netty/buffer/ByteBuf;)Z
    .locals 7

    .line 1
    sget-object v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$1;->$SwitchMap$io$netty$handler$codec$compression$JdkZlibDecoder$GzipState:[I

    .line 2
    .line 3
    iget-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    const/4 v3, 0x4

    .line 15
    const/4 v4, 0x0

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :pswitch_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/16 v5, 0xa

    .line 30
    .line 31
    if-ge v0, v5, :cond_0

    .line 32
    .line 33
    return v4

    .line 34
    :cond_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readByte()B

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readByte()B

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    const/16 v6, 0x1f

    .line 43
    .line 44
    if-ne v0, v6, :cond_f

    .line 45
    .line 46
    iget-object v6, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 47
    .line 48
    invoke-interface {v6, v0}, Ljava/util/zip/Checksum;->update(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 52
    .line 53
    invoke-interface {v0, v5}, Ljava/util/zip/Checksum;->update(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-ne v0, v2, :cond_e

    .line 61
    .line 62
    iget-object v5, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 63
    .line 64
    invoke-interface {v5, v0}, Ljava/util/zip/Checksum;->update(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iput v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->flags:I

    .line 72
    .line 73
    iget-object v5, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 74
    .line 75
    invoke-interface {v5, v0}, Ljava/util/zip/Checksum;->update(I)V

    .line 76
    .line 77
    .line 78
    iget v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->flags:I

    .line 79
    .line 80
    and-int/lit16 v0, v0, 0xe0

    .line 81
    .line 82
    if-nez v0, :cond_d

    .line 83
    .line 84
    iget-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 85
    .line 86
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    invoke-virtual {v0, p1, v5, v3}, Lio/netty/handler/codec/compression/ByteBufChecksum;->update(Lio/netty/buffer/ByteBuf;II)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v3}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 97
    .line 98
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    invoke-interface {v0, v5}, Ljava/util/zip/Checksum;->update(I)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 106
    .line 107
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    invoke-interface {v0, v5}, Ljava/util/zip/Checksum;->update(I)V

    .line 112
    .line 113
    .line 114
    sget-object v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->FLG_READ:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 115
    .line 116
    iput-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 117
    .line 118
    :pswitch_1
    iget v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->flags:I

    .line 119
    .line 120
    and-int/2addr v0, v3

    .line 121
    if-eqz v0, :cond_2

    .line 122
    .line 123
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-ge v0, v1, :cond_1

    .line 128
    .line 129
    return v4

    .line 130
    :cond_1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    iget-object v6, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 139
    .line 140
    invoke-interface {v6, v0}, Ljava/util/zip/Checksum;->update(I)V

    .line 141
    .line 142
    .line 143
    iget-object v6, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 144
    .line 145
    invoke-interface {v6, v5}, Ljava/util/zip/Checksum;->update(I)V

    .line 146
    .line 147
    .line 148
    iget v6, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->xlen:I

    .line 149
    .line 150
    shl-int/2addr v0, v2

    .line 151
    or-int/2addr v0, v5

    .line 152
    or-int/2addr v0, v6

    .line 153
    iput v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->xlen:I

    .line 154
    .line 155
    :cond_2
    sget-object v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->XLEN_READ:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 156
    .line 157
    iput-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 158
    .line 159
    :pswitch_2
    iget v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->xlen:I

    .line 160
    .line 161
    const/4 v5, -0x1

    .line 162
    if-eq v0, v5, :cond_4

    .line 163
    .line 164
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    iget v5, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->xlen:I

    .line 169
    .line 170
    if-ge v0, v5, :cond_3

    .line 171
    .line 172
    return v4

    .line 173
    :cond_3
    iget-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 174
    .line 175
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    iget v6, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->xlen:I

    .line 180
    .line 181
    invoke-virtual {v0, p1, v5, v6}, Lio/netty/handler/codec/compression/ByteBufChecksum;->update(Lio/netty/buffer/ByteBuf;II)V

    .line 182
    .line 183
    .line 184
    iget v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->xlen:I

    .line 185
    .line 186
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 187
    .line 188
    .line 189
    :cond_4
    sget-object v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->SKIP_FNAME:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 190
    .line 191
    iput-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 192
    .line 193
    :pswitch_3
    iget v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->flags:I

    .line 194
    .line 195
    and-int/2addr v0, v2

    .line 196
    if-eqz v0, :cond_7

    .line 197
    .line 198
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-nez v0, :cond_5

    .line 203
    .line 204
    return v4

    .line 205
    :cond_5
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    iget-object v2, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 210
    .line 211
    invoke-interface {v2, v0}, Ljava/util/zip/Checksum;->update(I)V

    .line 212
    .line 213
    .line 214
    if-nez v0, :cond_6

    .line 215
    .line 216
    goto :goto_0

    .line 217
    :cond_6
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-nez v0, :cond_5

    .line 222
    .line 223
    :cond_7
    :goto_0
    sget-object v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->SKIP_COMMENT:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 224
    .line 225
    iput-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 226
    .line 227
    :pswitch_4
    iget v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->flags:I

    .line 228
    .line 229
    and-int/lit8 v0, v0, 0x10

    .line 230
    .line 231
    if-eqz v0, :cond_a

    .line 232
    .line 233
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-nez v0, :cond_8

    .line 238
    .line 239
    return v4

    .line 240
    :cond_8
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    iget-object v2, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 245
    .line 246
    invoke-interface {v2, v0}, Ljava/util/zip/Checksum;->update(I)V

    .line 247
    .line 248
    .line 249
    if-nez v0, :cond_9

    .line 250
    .line 251
    goto :goto_1

    .line 252
    :cond_9
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-nez v0, :cond_8

    .line 257
    .line 258
    :cond_a
    :goto_1
    sget-object v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->PROCESS_FHCRC:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 259
    .line 260
    iput-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 261
    .line 262
    :pswitch_5
    iget v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->flags:I

    .line 263
    .line 264
    and-int/2addr v0, v1

    .line 265
    if-eqz v0, :cond_c

    .line 266
    .line 267
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-ge v0, v3, :cond_b

    .line 272
    .line 273
    return v4

    .line 274
    :cond_b
    invoke-direct {p0, p1}, Lio/netty/handler/codec/compression/JdkZlibDecoder;->verifyCrc(Lio/netty/buffer/ByteBuf;)V

    .line 275
    .line 276
    .line 277
    :cond_c
    iget-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 278
    .line 279
    invoke-interface {p1}, Ljava/util/zip/Checksum;->reset()V

    .line 280
    .line 281
    .line 282
    sget-object p1, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->HEADER_END:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 283
    .line 284
    iput-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 285
    .line 286
    :pswitch_6
    const/4 p1, 0x1

    .line 287
    return p1

    .line 288
    :cond_d
    new-instance p1, Lio/netty/handler/codec/compression/DecompressionException;

    .line 289
    .line 290
    const-string v0, "Reserved flags are set in the GZIP header"

    .line 291
    .line 292
    invoke-direct {p1, v0}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    throw p1

    .line 296
    :cond_e
    new-instance p1, Lio/netty/handler/codec/compression/DecompressionException;

    .line 297
    .line 298
    const-string v1, "Unsupported compression method "

    .line 299
    .line 300
    const-string v2, " in the GZIP header"

    .line 301
    .line 302
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v0

    .line 306
    invoke-direct {p1, v0}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    throw p1

    .line 310
    :cond_f
    new-instance p1, Lio/netty/handler/codec/compression/DecompressionException;

    .line 311
    .line 312
    const-string v0, "Input is not in the GZIP format"

    .line 313
    .line 314
    invoke-direct {p1, v0}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    throw p1

    .line 318
    nop

    .line 319
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private verifyCrc(Lio/netty/buffer/ByteBuf;)V
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    const/4 v3, 0x4

    .line 5
    if-ge v2, v3, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    int-to-long v3, v3

    .line 12
    mul-int/lit8 v5, v2, 0x8

    .line 13
    .line 14
    shl-long/2addr v3, v5

    .line 15
    or-long/2addr v0, v3

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/zip/Checksum;->getValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    cmp-long p1, v0, v2

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    new-instance p1, Lio/netty/handler/codec/compression/DecompressionException;

    .line 31
    .line 32
    const-string v4, "CRC value mismatch. Expected: "

    .line 33
    .line 34
    const-string v5, ", Got: "

    .line 35
    .line 36
    invoke-static {v4, v0, v1, v5}, Ls/a;->e(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {p1, v0}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method


# virtual methods
.method public decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->finished:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result p1

    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    return-void

    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->decideZlibOrNone:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->getShort(I)S

    move-result v1

    invoke-static {v1}, Lio/netty/handler/codec/compression/JdkZlibDecoder;->looksLikeZlib(S)Z

    move-result v1

    xor-int/2addr v1, v3

    new-instance v4, Ljava/util/zip/Inflater;

    invoke-direct {v4, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    iput-boolean v2, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->decideZlibOrNone:Z

    :cond_3
    iget-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    if-eqz v1, :cond_7

    sget-object v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$1;->$SwitchMap$io$netty$handler$codec$compression$JdkZlibDecoder$GzipState:[I

    iget-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_5

    iget-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    sget-object v1, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->HEADER_END:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    if-eq v0, v1, :cond_4

    invoke-direct {p0, p2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;->readGZIPHeader(Lio/netty/buffer/ByteBuf;)Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    goto :goto_0

    :cond_5
    invoke-direct {p0, p2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;->readGZIPFooter(Lio/netty/buffer/ByteBuf;)Z

    move-result p1

    if-eqz p1, :cond_6

    iput-boolean v3, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->finished:Z

    :cond_6
    return-void

    :cond_7
    :goto_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v4

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v5

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v1, v4, v6, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_1

    :cond_8
    new-array v1, v0, [B

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {p2, v4, v1}, Lio/netty/buffer/ByteBuf;->getBytes(I[B)Lio/netty/buffer/ByteBuf;

    iget-object v4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v4, v1}, Ljava/util/zip/Inflater;->setInput([B)V

    :goto_1
    iget-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    shl-int/2addr v1, v3

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4, v1}, Lio/netty/handler/codec/compression/ZlibDecoder;->prepareDecompressBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    :goto_2
    :try_start_0
    iget-object v4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v4

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v5

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v6

    add-int/2addr v6, v5

    iget-object v7, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v8

    invoke-virtual {v7, v4, v6, v8}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v7

    if-lez v7, :cond_9

    add-int/2addr v5, v7

    invoke-virtual {v1, v5}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    iget-object v5, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    if-eqz v5, :cond_b

    invoke-interface {v5, v4, v6, v7}, Ljava/util/zip/Checksum;->update([BII)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :catch_0
    move-exception p1

    goto/16 :goto_6

    :cond_9
    iget-object v4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->dictionary:[B

    if-eqz v4, :cond_a

    iget-object v5, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v5, v4}, Ljava/util/zip/Inflater;->setDictionary([B)V

    goto :goto_3

    :cond_a
    new-instance p1, Lio/netty/handler/codec/compression/DecompressionException;

    const-string p2, "decompression failure, unable to set dictionary as non was specified"

    invoke-direct {p1, p2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    :goto_3
    iget-object v4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    if-nez p1, :cond_c

    iput-boolean v3, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->finished:Z

    goto :goto_4

    :cond_c
    const/4 v2, 0x1

    goto :goto_4

    :cond_d
    iget-object v4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v4

    shl-int/2addr v4, v3

    invoke-virtual {p0, p1, v1, v4}, Lio/netty/handler/codec/compression/ZlibDecoder;->prepareDecompressBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    goto :goto_2

    :cond_e
    :goto_4
    iget-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    if-eqz v2, :cond_f

    sget-object p1, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->FOOTER_START:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    iput-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    invoke-direct {p0, p2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;->readGZIPFooter(Lio/netty/buffer/ByteBuf;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-boolean p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->decompressConcatenated:Z

    xor-int/2addr p1, v3

    iput-boolean p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->finished:Z

    iget-boolean p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->finished:Z

    if-nez p1, :cond_f

    iget-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->reset()V

    iget-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-interface {p1}, Ljava/util/zip/Checksum;->reset()V

    sget-object p1, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->HEADER_START:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    iput-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_f
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_10
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_5
    return-void

    :goto_6
    :try_start_1
    new-instance p2, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v0, "decompression failure"

    invoke-direct {p2, v0, p1}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_7
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_11
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    :goto_8
    throw p1
.end method

.method public decompressionBufferExhausted(Lio/netty/buffer/ByteBuf;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->finished:Z

    return-void
.end method

.method public handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    invoke-super {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V

    iget-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/zip/Inflater;->end()V

    :cond_0
    return-void
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->finished:Z

    return v0
.end method
