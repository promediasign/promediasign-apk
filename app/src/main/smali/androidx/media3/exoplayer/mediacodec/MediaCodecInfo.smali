.class public final Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final adaptive:Z

.field public final capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field public final codecMimeType:Ljava/lang/String;

.field public final hardwareAccelerated:Z

.field private final isVideo:Z

.field public final mimeType:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final secure:Z

.field public final softwareOnly:Z

.field public final tunneling:Z

.field public final vendor:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    iput-object p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->codecMimeType:Ljava/lang/String;

    iput-object p4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iput-boolean p5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->hardwareAccelerated:Z

    iput-boolean p6, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->softwareOnly:Z

    iput-boolean p7, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->vendor:Z

    iput-boolean p8, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->adaptive:Z

    iput-boolean p9, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->tunneling:Z

    iput-boolean p10, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->secure:Z

    invoke-static {p2}, Landroidx/media3/common/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isVideo:Z

    return-void
.end method

.method private static adjustMaxInputChannelCount(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x1

    if-gt p2, v0, :cond_4

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    if-lez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "audio/mpeg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/3gpp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/amr-wb"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/vorbis"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/opus"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/raw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/flac"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/g711-alaw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/g711-mlaw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "audio/gsm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "audio/ac3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x6

    goto :goto_0

    :cond_2
    const-string v0, "audio/eac3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x10

    goto :goto_0

    :cond_3
    const/16 p1, 0x1e

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AssumedMaxChannelAdjustment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", ["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "MediaCodecInfo"

    invoke-static {p2, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    :cond_4
    :goto_1
    return p2
.end method

.method private static alignVideoSizeV21(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v0

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result p0

    new-instance v1, Landroid/graphics/Point;

    invoke-static {p1, v0}, Landroidx/media3/common/util/Util;->ceilDivide(II)I

    move-result p1

    mul-int p1, p1, v0

    invoke-static {p2, p0}, Landroidx/media3/common/util/Util;->ceilDivide(II)I

    move-result p2

    mul-int p2, p2, p0

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method private static areSizeAndRateSupportedV21(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .locals 3

    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->alignVideoSizeV21(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;

    move-result-object p1

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v2, p3, v0

    if-eqz v2, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p3, v0

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    move-result-wide p3

    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result p0

    return p0
.end method

.method private static estimateLegacyVp9ProfileLevels(Landroid/media/MediaCodecInfo$CodecCapabilities;)[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBitrateRange()Landroid/util/Range;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const v2, 0xaba9500

    if-lt p0, v2, :cond_1

    const/16 p0, 0x400

    goto :goto_1

    :cond_1
    const v2, 0x7270e00

    if-lt p0, v2, :cond_2

    const/16 p0, 0x200

    goto :goto_1

    :cond_2
    const v2, 0x3938700

    if-lt p0, v2, :cond_3

    const/16 p0, 0x100

    goto :goto_1

    :cond_3
    const v2, 0x1c9c380

    if-lt p0, v2, :cond_4

    const/16 p0, 0x80

    goto :goto_1

    :cond_4
    const v2, 0x112a880

    if-lt p0, v2, :cond_5

    const/16 p0, 0x40

    goto :goto_1

    :cond_5
    const v2, 0xb71b00

    if-lt p0, v2, :cond_6

    const/16 p0, 0x20

    goto :goto_1

    :cond_6
    const v2, 0x6ddd00

    if-lt p0, v2, :cond_7

    const/16 p0, 0x10

    goto :goto_1

    :cond_7
    const v2, 0x36ee80

    if-lt p0, v2, :cond_8

    const/16 p0, 0x8

    goto :goto_1

    :cond_8
    const v2, 0x1b7740

    if-lt p0, v2, :cond_9

    const/4 p0, 0x4

    goto :goto_1

    :cond_9
    const v2, 0xc3500

    if-lt p0, v2, :cond_a

    const/4 p0, 0x2

    goto :goto_1

    :cond_a
    const/4 p0, 0x1

    :goto_1
    new-instance v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;

    invoke-direct {v2}, Landroid/media/MediaCodecInfo$CodecProfileLevel;-><init>()V

    iput v0, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    iput p0, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    new-array p0, v0, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    aput-object v2, p0, v1

    return-object p0
.end method

.method private static isAdaptive(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 2

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isAdaptiveV19(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isAdaptiveV19(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1

    const-string v0, "adaptive-playback"

    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isCodecProfileAndLevelSupported(Landroidx/media3/common/Format;Z)Z
    .locals 9

    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Landroidx/media3/common/Format;)Landroid/util/Pair;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v4, "video/dolby-vision"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    const-string v3, "video/avc"

    iget-object v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x8

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v3, "video/hevc"

    iget-object v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    :goto_1
    iget-boolean v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isVideo:Z

    if-nez v3, :cond_3

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v3

    sget v5, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v6, 0x17

    if-gt v5, v6, :cond_4

    const-string v5, "video/x-vnd.on2.vp9"

    iget-object v6, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    array-length v5, v3

    if-nez v5, :cond_4

    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-static {v3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->estimateLegacyVp9ProfileLevels(Landroid/media/MediaCodecInfo$CodecCapabilities;)[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v3

    :cond_4
    array-length v5, v3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_7

    aget-object v7, v3, v6

    iget v8, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    if-ne v8, v2, :cond_6

    iget v7, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-ge v7, v0, :cond_5

    if-nez p2, :cond_6

    :cond_5
    iget-object v7, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    invoke-static {v7, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->needsProfileExcludedWorkaround(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_6

    return v1

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "codec.profileLevel, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->codecMimeType:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    return v4
.end method

.method private isSampleMimeTypeSupported(Landroidx/media3/common/Format;)Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    iget-object v1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getAlternativeCodecMimeType(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private static isSecure(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 2

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isSecureV21(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSecureV21(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1

    const-string v0, "secure-playback"

    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isTunneling(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 2

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isTunnelingV21(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isTunnelingV21(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 1

    const-string v0, "tunneled-playback"

    invoke-virtual {p0, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private logAssumedSupport(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "AssumedSupport ["

    .line 2
    .line 3
    const-string v1, "] ["

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v0, ", "

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    sget-object v0, Landroidx/media3/common/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, "]"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, "MediaCodecInfo"

    .line 42
    .line 43
    invoke-static {v0, p1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private logNoSupport(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "NoSupport ["

    .line 2
    .line 3
    const-string v1, "] ["

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v0, ", "

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    sget-object v0, Landroidx/media3/common/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, "]"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, "MediaCodecInfo"

    .line 42
    .line 43
    invoke-static {v0, p1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private static needsAdaptationFlushWorkaround(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "audio/opus"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static needsAdaptationReconfigureWorkaround(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "SM-T230"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OMX.MARVELL.VIDEO.HW.CODA7542DECODER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static needsDisableAdaptationWorkaround(Ljava/lang/String;)Z
    .locals 2

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_2

    sget-object v0, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "ODROID-XU3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Nexus 10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "OMX.Exynos.AVC.Decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OMX.Exynos.AVC.Decoder.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static needsProfileExcludedWorkaround(Ljava/lang/String;I)Z
    .locals 1

    const-string v0, "video/hevc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    if-ne p0, p1, :cond_1

    sget-object p0, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    const-string p1, "sailfish"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "marlin"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static needsRotatedVerticalResolutionWorkaround(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "OMX.MTK.VIDEO.DECODER.HEVC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "mcv5a"

    sget-object v0, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;
    .locals 12

    new-instance v11, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p7, :cond_0

    if-eqz p3, :cond_0

    invoke-static {p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isAdaptive(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->needsDisableAdaptationWorkaround(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-eqz p3, :cond_1

    invoke-static {p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isTunneling(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-nez p8, :cond_3

    if-eqz p3, :cond_2

    invoke-static {p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isSecure(Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v10, 0x1

    :goto_3
    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v10}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZZ)V

    return-object v11
.end method


# virtual methods
.method public alignVideoSizeV21(II)Landroid/graphics/Point;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {v0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->alignVideoSizeV21(Landroid/media/MediaCodecInfo$VideoCapabilities;II)Landroid/graphics/Point;

    move-result-object p1

    return-object p1
.end method

.method public canReuseCodec(Landroidx/media3/common/Format;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/DecoderReuseEvaluation;
    .locals 13

    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, p2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isVideo:Z

    if-eqz v1, :cond_9

    iget v1, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    iget v2, p2, Landroidx/media3/common/Format;->rotationDegrees:I

    if-eq v1, v2, :cond_1

    or-int/lit16 v0, v0, 0x400

    :cond_1
    iget-boolean v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->adaptive:Z

    if-nez v1, :cond_3

    iget v1, p1, Landroidx/media3/common/Format;->width:I

    iget v2, p2, Landroidx/media3/common/Format;->width:I

    if-ne v1, v2, :cond_2

    iget v1, p1, Landroidx/media3/common/Format;->height:I

    iget v2, p2, Landroidx/media3/common/Format;->height:I

    if-eq v1, v2, :cond_3

    :cond_2
    or-int/lit16 v0, v0, 0x200

    :cond_3
    iget-object v1, p1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v1}, Landroidx/media3/common/ColorInfo;->isEquivalentToAssumedSdrDefault(Landroidx/media3/common/ColorInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p2, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v1}, Landroidx/media3/common/ColorInfo;->isEquivalentToAssumedSdrDefault(Landroidx/media3/common/ColorInfo;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v1, p1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    iget-object v2, p2, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    or-int/lit16 v0, v0, 0x800

    :cond_5
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->needsAdaptationReconfigureWorkaround(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, p2}, Landroidx/media3/common/Format;->initializationDataEquals(Landroidx/media3/common/Format;)Z

    move-result v1

    if-nez v1, :cond_6

    or-int/lit8 v0, v0, 0x2

    :cond_6
    if-nez v0, :cond_8

    new-instance v0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroidx/media3/common/Format;->initializationDataEquals(Landroidx/media3/common/Format;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x3

    const/4 v5, 0x3

    goto :goto_1

    :cond_7
    const/4 v1, 0x2

    const/4 v5, 0x2

    :goto_1
    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    return-object v0

    :cond_8
    move v12, v0

    goto/16 :goto_2

    :cond_9
    iget v1, p1, Landroidx/media3/common/Format;->channelCount:I

    iget v2, p2, Landroidx/media3/common/Format;->channelCount:I

    if-eq v1, v2, :cond_a

    or-int/lit16 v0, v0, 0x1000

    :cond_a
    iget v1, p1, Landroidx/media3/common/Format;->sampleRate:I

    iget v2, p2, Landroidx/media3/common/Format;->sampleRate:I

    if-eq v1, v2, :cond_b

    or-int/lit16 v0, v0, 0x2000

    :cond_b
    iget v1, p1, Landroidx/media3/common/Format;->pcmEncoding:I

    iget v2, p2, Landroidx/media3/common/Format;->pcmEncoding:I

    if-eq v1, v2, :cond_c

    or-int/lit16 v0, v0, 0x4000

    :cond_c
    if-nez v0, :cond_d

    const-string v1, "audio/mp4a-latm"

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Landroidx/media3/common/Format;)Landroid/util/Pair;

    move-result-object v1

    invoke-static {p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Landroidx/media3/common/Format;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v1, :cond_d

    if-eqz v2, :cond_d

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x2a

    if-ne v1, v3, :cond_d

    if-ne v2, v3, :cond_d

    new-instance v0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v4, v0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    return-object v0

    :cond_d
    invoke-virtual {p1, p2}, Landroidx/media3/common/Format;->initializationDataEquals(Landroidx/media3/common/Format;)Z

    move-result v1

    if-nez v1, :cond_e

    or-int/lit8 v0, v0, 0x20

    :cond_e
    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->needsAdaptationFlushWorkaround(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    or-int/lit8 v0, v0, 0x2

    :cond_f
    if-nez v0, :cond_8

    new-instance v0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    return-object v0

    :goto_2
    new-instance v0, Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    iget-object v8, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const/4 v11, 0x0

    move-object v7, v0

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v7 .. v12}, Landroidx/media3/exoplayer/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Landroidx/media3/common/Format;Landroidx/media3/common/Format;II)V

    return-object v0
.end method

.method public getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    :cond_1
    return-object v0
.end method

.method public isAudioChannelCountSupportedV21(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string p1, "channelCount.caps"

    .line 7
    .line 8
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const-string p1, "channelCount.aCaps"

    .line 19
    .line 20
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$AudioCapabilities;->getMaxInputChannelCount()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-static {v2, v3, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->adjustMaxInputChannelCount(Ljava/lang/String;Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-ge v0, p1, :cond_2

    .line 37
    .line 38
    const-string v0, "channelCount.support, "

    .line 39
    .line 40
    invoke-static {p1, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return v1

    .line 48
    :cond_2
    const/4 p1, 0x1

    .line 49
    return p1
.end method

.method public isAudioSampleRateSupportedV21(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string p1, "sampleRate.caps"

    .line 7
    .line 8
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getAudioCapabilities()Landroid/media/MediaCodecInfo$AudioCapabilities;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const-string p1, "sampleRate.aCaps"

    .line 19
    .line 20
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    invoke-virtual {v0, p1}, Landroid/media/MediaCodecInfo$AudioCapabilities;->isSampleRateSupported(I)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    const-string v0, "sampleRate.support, "

    .line 31
    .line 32
    invoke-static {p1, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return v1

    .line 40
    :cond_2
    const/4 p1, 0x1

    .line 41
    return p1
.end method

.method public isFormatFunctionallySupported(Landroidx/media3/common/Format;)Z
    .locals 2

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isSampleMimeTypeSupported(Landroidx/media3/common/Format;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isCodecProfileAndLevelSupported(Landroidx/media3/common/Format;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isFormatSupported(Landroidx/media3/common/Format;)Z
    .locals 6

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isSampleMimeTypeSupported(Landroidx/media3/common/Format;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isCodecProfileAndLevelSupported(Landroidx/media3/common/Format;Z)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-boolean v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isVideo:Z

    const/16 v3, 0x15

    if-eqz v2, :cond_7

    iget v2, p1, Landroidx/media3/common/Format;->width:I

    if-lez v2, :cond_6

    iget v4, p1, Landroidx/media3/common/Format;->height:I

    if-gtz v4, :cond_2

    goto :goto_0

    :cond_2
    sget v5, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-lt v5, v3, :cond_3

    iget p1, p1, Landroidx/media3/common/Format;->frameRate:F

    float-to-double v0, p1

    invoke-virtual {p0, v2, v4, v0, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isVideoSizeAndRateSupportedV21(IID)Z

    move-result p1

    return p1

    :cond_3
    mul-int v2, v2, v4

    invoke-static {}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize()I

    move-result v3

    if-gt v2, v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "legacyFrameSize, "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroidx/media3/common/Format;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroidx/media3/common/Format;->height:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v0

    :cond_7
    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-lt v2, v3, :cond_9

    iget v2, p1, Landroidx/media3/common/Format;->sampleRate:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isAudioSampleRateSupportedV21(I)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_8
    iget p1, p1, Landroidx/media3/common/Format;->channelCount:I

    if-eq p1, v3, :cond_9

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isAudioChannelCountSupportedV21(I)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    const/4 v1, 0x1

    :cond_a
    return v1
.end method

.method public isHdr10PlusOutOfBandMetadataSupported()Z
    .locals 6

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    const-string v0, "video/x-vnd.on2.vp9"

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget v4, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/16 v5, 0x4000

    if-ne v4, v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isSeamlessAdaptationSupported(Landroidx/media3/common/Format;)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isVideo:Z

    if-eqz v0, :cond_0

    iget-boolean p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->adaptive:Z

    return p1

    :cond_0
    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Landroidx/media3/common/Format;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isVideoSizeAndRateSupportedV21(IID)Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string p1, "sizeAndRate.caps"

    .line 7
    .line 8
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const-string p1, "sizeAndRate.vCaps"

    .line 19
    .line 20
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    .line 25
    .line 26
    const/16 v3, 0x1d

    .line 27
    .line 28
    const-string v4, "@"

    .line 29
    .line 30
    const-string v5, "x"

    .line 31
    .line 32
    const/4 v6, 0x1

    .line 33
    if-lt v2, v3, :cond_3

    .line 34
    .line 35
    invoke-static {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecPerformancePointCoverageProvider;->areResolutionAndFrameRateCovered(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/4 v3, 0x2

    .line 40
    if-ne v2, v3, :cond_2

    .line 41
    .line 42
    return v6

    .line 43
    :cond_2
    if-ne v2, v6, :cond_3

    .line 44
    .line 45
    const-string v0, "sizeAndRate.cover, "

    .line 46
    .line 47
    invoke-static {v0, p1, v5, p2, v4}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return v1

    .line 62
    :cond_3
    invoke-static {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->areSizeAndRateSupportedV21(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_6

    .line 67
    .line 68
    if-ge p1, p2, :cond_5

    .line 69
    .line 70
    iget-object v2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->needsRotatedVerticalResolutionWorkaround(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_5

    .line 77
    .line 78
    invoke-static {v0, p2, p1, p3, p4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->areSizeAndRateSupportedV21(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_4

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    const-string v0, "sizeAndRate.rotated, "

    .line 86
    .line 87
    invoke-static {v0, p1, v5, p2, v4}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->logAssumedSupport(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_5
    :goto_0
    const-string v0, "sizeAndRate.support, "

    .line 103
    .line 104
    invoke-static {v0, p1, v5, p2, v4}, Ls/a;->d(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->logNoSupport(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return v1

    .line 119
    :cond_6
    :goto_1
    return v6
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    return-object v0
.end method
