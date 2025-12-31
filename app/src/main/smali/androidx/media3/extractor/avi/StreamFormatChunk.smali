.class final Landroidx/media3/extractor/avi/StreamFormatChunk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/avi/AviChunk;


# instance fields
.field public final format:Landroidx/media3/common/Format;


# direct methods
.method public constructor <init>(Landroidx/media3/common/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/avi/StreamFormatChunk;->format:Landroidx/media3/common/Format;

    return-void
.end method

.method private static getMimeTypeFromCompression(I)Ljava/lang/String;
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :sswitch_0
    const-string p0, "video/mjpeg"

    return-object p0

    :sswitch_1
    const-string p0, "video/mp43"

    return-object p0

    :sswitch_2
    const-string p0, "video/mp42"

    return-object p0

    :sswitch_3
    const-string p0, "video/avc"

    return-object p0

    :sswitch_4
    const-string p0, "video/mp4v-es"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x30355844 -> :sswitch_4
        0x31435641 -> :sswitch_3
        0x31637661 -> :sswitch_3
        0x3234504d -> :sswitch_2
        0x3334504d -> :sswitch_1
        0x34363248 -> :sswitch_3
        0x34504d46 -> :sswitch_4
        0x44495633 -> :sswitch_4
        0x44495658 -> :sswitch_4
        0x47504a4d -> :sswitch_0
        0x58564944 -> :sswitch_4
        0x64697678 -> :sswitch_4
        0x67706a6d -> :sswitch_0
        0x78766964 -> :sswitch_4
    .end sparse-switch
.end method

.method private static getMimeTypeFromTag(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/16 v0, 0x55

    if-eq p0, v0, :cond_3

    const/16 v0, 0xff

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2000

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2001

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "audio/vnd.dts"

    return-object p0

    :cond_1
    const-string p0, "audio/ac3"

    return-object p0

    :cond_2
    const-string p0, "audio/mp4a-latm"

    return-object p0

    :cond_3
    const-string p0, "audio/mpeg"

    return-object p0

    :cond_4
    const-string p0, "audio/raw"

    return-object p0
.end method

.method private static parseBitmapInfoHeader(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/avi/AviChunk;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    invoke-static {p0}, Landroidx/media3/extractor/avi/StreamFormatChunk;->getMimeTypeFromCompression(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    const-string v0, "Ignoring track with unsupported compression "

    .line 27
    .line 28
    const-string v1, "StreamFormatChunk"

    .line 29
    .line 30
    invoke-static {p0, v0, v1}, Ls/a;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return-object p0

    .line 35
    :cond_0
    new-instance p0, Landroidx/media3/common/Format$Builder;

    .line 36
    .line 37
    invoke-direct {p0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1, v0}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 49
    .line 50
    .line 51
    new-instance v0, Landroidx/media3/extractor/avi/StreamFormatChunk;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-direct {v0, p0}, Landroidx/media3/extractor/avi/StreamFormatChunk;-><init>(Landroidx/media3/common/Format;)V

    .line 58
    .line 59
    .line 60
    return-object v0
.end method

.method public static parseFrom(ILandroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/avi/AviChunk;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Landroidx/media3/extractor/avi/StreamFormatChunk;->parseBitmapInfoHeader(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/avi/AviChunk;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    invoke-static {p1}, Landroidx/media3/extractor/avi/StreamFormatChunk;->parseWaveFormatEx(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/avi/AviChunk;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Ignoring strf box for unsupported track type: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/media3/common/util/Util;->getTrackTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StreamFormatChunk"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseWaveFormatEx(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/avi/AviChunk;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroidx/media3/extractor/avi/StreamFormatChunk;->getMimeTypeFromTag(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const-string p0, "Ignoring track with unsupported format tag "

    .line 12
    .line 13
    const-string v1, "StreamFormatChunk"

    .line 14
    .line 15
    invoke-static {v0, p0, v1}, Ls/a;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return-object p0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianInt()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x6

    .line 29
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-static {v3}, Landroidx/media3/common/util/Util;->getPcmEncoding(I)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    new-array v5, v4, [B

    .line 45
    .line 46
    const/4 v6, 0x0

    .line 47
    invoke-virtual {p0, v5, v6, v4}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 48
    .line 49
    .line 50
    new-instance p0, Landroidx/media3/common/Format$Builder;

    .line 51
    .line 52
    invoke-direct {p0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v6, v0}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0, v2}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    .line 64
    .line 65
    .line 66
    const-string v0, "audio/raw"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    if-eqz v3, :cond_1

    .line 75
    .line 76
    invoke-virtual {p0, v3}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    .line 77
    .line 78
    .line 79
    :cond_1
    const-string v0, "audio/mp4a-latm"

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    if-lez v4, :cond_2

    .line 88
    .line 89
    invoke-static {v5}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p0, v0}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    .line 94
    .line 95
    .line 96
    :cond_2
    new-instance v0, Landroidx/media3/extractor/avi/StreamFormatChunk;

    .line 97
    .line 98
    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-direct {v0, p0}, Landroidx/media3/extractor/avi/StreamFormatChunk;-><init>(Landroidx/media3/common/Format;)V

    .line 103
    .line 104
    .line 105
    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    const v0, 0x66727473

    return v0
.end method
