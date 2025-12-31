.class public abstract Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;,
        Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;
    }
.end annotation


# static fields
.field private static final PROFILE_PATTERN:Ljava/util/regex/Pattern;

.field private static final decoderInfosCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static maxH264DecodableFrameSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^\\D?(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    const/4 v0, -0x1

    sput v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->lambda$applyWorkarounds$2(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)I

    move-result p0

    return p0
.end method

.method private static applyWorkarounds(Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "audio/raw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    sget p0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge p0, v2, :cond_0

    sget-object p0, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "R9"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v2, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v2, "OMX.google.raw.decoder"

    const-string v3, "audio/raw"

    const-string v4, "audio/raw"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v2 .. v10}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance p0, Landroidx/media3/exoplayer/mediacodec/c;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/mediacodec/c;-><init>(I)V

    invoke-static {p1, p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->sortByScore(Ljava/util/List;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;)V

    :cond_1
    sget p0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-ge p0, v2, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v3, "OMX.SEC.mp3.dec"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "OMX.SEC.MP3.Decoder"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "OMX.brcm.audio.mp3.decoder"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    new-instance v2, Landroidx/media3/exoplayer/mediacodec/c;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroidx/media3/exoplayer/mediacodec/c;-><init>(I)V

    invoke-static {p1, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->sortByScore(Ljava/util/List;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;)V

    :cond_3
    const/16 v2, 0x20

    if-ge p0, v2, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v0, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v0, "OMX.qti.audio.decoder.flac"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method private static av1LevelNumberToConst(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/high16 p0, 0x800000

    return p0

    :pswitch_1
    const/high16 p0, 0x400000

    return p0

    :pswitch_2
    const/high16 p0, 0x200000

    return p0

    :pswitch_3
    const/high16 p0, 0x100000

    return p0

    :pswitch_4
    const/high16 p0, 0x80000

    return p0

    :pswitch_5
    const/high16 p0, 0x40000

    return p0

    :pswitch_6
    const/high16 p0, 0x20000

    return p0

    :pswitch_7
    const/high16 p0, 0x10000

    return p0

    :pswitch_8
    const p0, 0x8000

    return p0

    :pswitch_9
    const/16 p0, 0x4000

    return p0

    :pswitch_a
    const/16 p0, 0x2000

    return p0

    :pswitch_b
    const/16 p0, 0x1000

    return p0

    :pswitch_c
    const/16 p0, 0x800

    return p0

    :pswitch_d
    const/16 p0, 0x400

    return p0

    :pswitch_e
    const/16 p0, 0x200

    return p0

    :pswitch_f
    const/16 p0, 0x100

    return p0

    :pswitch_10
    const/16 p0, 0x80

    return p0

    :pswitch_11
    const/16 p0, 0x40

    return p0

    :pswitch_12
    const/16 p0, 0x20

    return p0

    :pswitch_13
    const/16 p0, 0x10

    return p0

    :pswitch_14
    const/16 p0, 0x8

    return p0

    :pswitch_15
    const/4 p0, 0x4

    return p0

    :pswitch_16
    const/4 p0, 0x2

    return p0

    :pswitch_17
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static avcLevelNumberToConst(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/high16 p0, 0x10000

    return p0

    :pswitch_1
    const p0, 0x8000

    return p0

    :pswitch_2
    const/16 p0, 0x4000

    return p0

    :pswitch_3
    const/16 p0, 0x2000

    return p0

    :pswitch_4
    const/16 p0, 0x1000

    return p0

    :pswitch_5
    const/16 p0, 0x800

    return p0

    :pswitch_6
    const/16 p0, 0x400

    return p0

    :pswitch_7
    const/16 p0, 0x200

    return p0

    :pswitch_8
    const/16 p0, 0x100

    return p0

    :pswitch_9
    const/16 p0, 0x80

    return p0

    :pswitch_a
    const/16 p0, 0x40

    return p0

    :pswitch_b
    const/16 p0, 0x20

    return p0

    :pswitch_c
    const/16 p0, 0x10

    return p0

    :pswitch_d
    const/16 p0, 0x8

    return p0

    :pswitch_e
    const/4 p0, 0x4

    return p0

    :pswitch_f
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1e
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x28
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x32
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static avcLevelToMaxFrameSize(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, -0x1

    return p0

    :sswitch_0
    const/high16 p0, 0x2200000

    return p0

    :sswitch_1
    const/high16 p0, 0x900000

    return p0

    :sswitch_2
    const p0, 0x564000

    return p0

    :sswitch_3
    const/high16 p0, 0x220000

    return p0

    :sswitch_4
    const/high16 p0, 0x200000

    return p0

    :sswitch_5
    const/high16 p0, 0x140000

    return p0

    :sswitch_6
    const p0, 0xe1000

    return p0

    :sswitch_7
    const p0, 0x65400

    return p0

    :sswitch_8
    const p0, 0x31800

    return p0

    :sswitch_9
    const p0, 0x18c00

    return p0

    :cond_0
    const/16 p0, 0x6300

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_9
        0x10 -> :sswitch_9
        0x20 -> :sswitch_9
        0x40 -> :sswitch_8
        0x80 -> :sswitch_7
        0x100 -> :sswitch_7
        0x200 -> :sswitch_6
        0x400 -> :sswitch_5
        0x800 -> :sswitch_4
        0x1000 -> :sswitch_4
        0x2000 -> :sswitch_3
        0x4000 -> :sswitch_2
        0x8000 -> :sswitch_1
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x80000 -> :sswitch_0
    .end sparse-switch
.end method

.method private static avcProfileNumberToConst(I)I
    .locals 1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_6

    const/16 v0, 0x4d

    if-eq p0, v0, :cond_5

    const/16 v0, 0x58

    if-eq p0, v0, :cond_4

    const/16 v0, 0x64

    if-eq p0, v0, :cond_3

    const/16 v0, 0x6e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x7a

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf4

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, 0x40

    return p0

    :cond_1
    const/16 p0, 0x20

    return p0

    :cond_2
    const/16 p0, 0x10

    return p0

    :cond_3
    const/16 p0, 0x8

    return p0

    :cond_4
    const/4 p0, 0x4

    return p0

    :cond_5
    const/4 p0, 0x2

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic b(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->lambda$sortByScore$3(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->lambda$getDecoderInfosSortedByFormatSupport$0(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->lambda$applyWorkarounds$1(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)I

    move-result p0

    return p0
.end method

.method private static dolbyVisionStringToLevel(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "13"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v6, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "12"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v6, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "11"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v6, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "10"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v6, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "09"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v6, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "08"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v6, 0x7

    goto :goto_0

    :sswitch_6
    const-string v1, "07"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v6, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "06"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v6, 0x5

    goto :goto_0

    :sswitch_8
    const-string v1, "05"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v6, 0x4

    goto :goto_0

    :sswitch_9
    const-string v1, "04"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_a
    const-string v1, "03"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v6, 0x2

    goto :goto_0

    :sswitch_b
    const-string v1, "02"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v6, 0x1

    goto :goto_0

    :sswitch_c
    const-string v1, "01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v6, 0x0

    :goto_0
    packed-switch v6, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/16 p0, 0x1000

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    const/16 p0, 0x800

    goto :goto_1

    :pswitch_2
    const/16 p0, 0x400

    goto :goto_1

    :pswitch_3
    const/16 p0, 0x200

    goto :goto_1

    :pswitch_4
    const/16 p0, 0x100

    goto :goto_1

    :pswitch_5
    const/16 p0, 0x80

    goto :goto_1

    :pswitch_6
    const/16 p0, 0x40

    goto :goto_1

    :pswitch_7
    const/16 p0, 0x20

    goto :goto_1

    :pswitch_8
    const/16 p0, 0x10

    goto :goto_1

    :pswitch_9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x601 -> :sswitch_c
        0x602 -> :sswitch_b
        0x603 -> :sswitch_a
        0x604 -> :sswitch_9
        0x605 -> :sswitch_8
        0x606 -> :sswitch_7
        0x607 -> :sswitch_6
        0x608 -> :sswitch_5
        0x609 -> :sswitch_4
        0x61f -> :sswitch_3
        0x620 -> :sswitch_2
        0x621 -> :sswitch_1
        0x622 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static dolbyVisionStringToProfile(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v1, "09"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v6, 0x9

    goto/16 :goto_0

    :pswitch_1
    const-string v1, "08"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v6, 0x8

    goto/16 :goto_0

    :pswitch_2
    const-string v1, "07"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x7

    goto :goto_0

    :pswitch_3
    const-string v1, "06"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v6, 0x6

    goto :goto_0

    :pswitch_4
    const-string v1, "05"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v6, 0x5

    goto :goto_0

    :pswitch_5
    const-string v1, "04"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v6, 0x4

    goto :goto_0

    :pswitch_6
    const-string v1, "03"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v6, 0x3

    goto :goto_0

    :pswitch_7
    const-string v1, "02"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v6, 0x2

    goto :goto_0

    :pswitch_8
    const-string v1, "01"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v6, 0x1

    goto :goto_0

    :pswitch_9
    const-string v1, "00"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v6, 0x0

    :goto_0
    packed-switch v6, :pswitch_data_1

    return-object v0

    :pswitch_a
    const/16 p0, 0x200

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_b
    const/16 p0, 0x100

    goto :goto_1

    :pswitch_c
    const/16 p0, 0x80

    goto :goto_1

    :pswitch_d
    const/16 p0, 0x40

    goto :goto_1

    :pswitch_e
    const/16 p0, 0x20

    goto :goto_1

    :pswitch_f
    const/16 p0, 0x10

    goto :goto_1

    :pswitch_10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_12
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_13
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x600
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method private static getAacCodecProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x0

    .line 4
    const-string v3, "Ignoring malformed MP4A codec string: "

    .line 5
    .line 6
    const-string v4, "MediaCodecUtil"

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    invoke-static {v3, p0, v4}, LA/g;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    :try_start_0
    aget-object v0, p1, v0

    .line 16
    .line 17
    const/16 v1, 0x10

    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "audio/mp4a-latm"

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x2

    .line 36
    aget-object p1, p1, v0

    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->mp4aAudioObjectTypeToProfile(I)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    const/4 v0, -0x1

    .line 47
    if-eq p1, v0, :cond_1

    .line 48
    .line 49
    new-instance v0, Landroid/util/Pair;

    .line 50
    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    return-object v0

    .line 64
    :catch_0
    invoke-static {v3, p0, v4}, LA/g;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-object v2
.end method

.method public static getAlternativeCodecMimeType(Landroidx/media3/common/Format;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "audio/eac3-joc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "audio/eac3"

    return-object p0

    :cond_0
    const-string v0, "video/dolby-vision"

    iget-object v1, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getCodecProfileAndLevel(Landroidx/media3/common/Format;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_2

    const/16 v0, 0x100

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x200

    if-ne p0, v0, :cond_3

    const-string p0, "video/avc"

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "video/hevc"

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAlternativeDecoderInfos(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;",
            "Landroidx/media3/common/Format;",
            "ZZ)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getAlternativeCodecMimeType(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p0, LA/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getAv1ProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;Landroidx/media3/common/ColorInfo;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroidx/media3/common/ColorInfo;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x4

    .line 3
    const-string v2, "Ignoring malformed AV1 codec string: "

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const-string v4, "MediaCodecUtil"

    .line 7
    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    invoke-static {v2, p0, v4}, LA/g;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v3

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    :try_start_0
    aget-object v1, p1, v0

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v5, 0x2

    .line 22
    aget-object v6, p1, v5

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    const/4 v7, 0x3

    .line 34
    aget-object p1, p1, v7

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    const-string p0, "Unknown AV1 profile: "

    .line 43
    .line 44
    invoke-static {v1, p0, v4}, Ls/a;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object v3

    .line 48
    :cond_1
    const/16 p1, 0x8

    .line 49
    .line 50
    if-eq p0, p1, :cond_2

    .line 51
    .line 52
    const/16 v1, 0xa

    .line 53
    .line 54
    if-eq p0, v1, :cond_2

    .line 55
    .line 56
    const-string p1, "Unknown AV1 bit depth: "

    .line 57
    .line 58
    invoke-static {p0, p1, v4}, Ls/a;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-object v3

    .line 62
    :cond_2
    if-ne p0, p1, :cond_3

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    if-eqz p2, :cond_5

    .line 66
    .line 67
    iget-object p0, p2, Landroidx/media3/common/ColorInfo;->hdrStaticInfo:[B

    .line 68
    .line 69
    if-nez p0, :cond_4

    .line 70
    .line 71
    iget p0, p2, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    .line 72
    .line 73
    const/4 p1, 0x7

    .line 74
    if-eq p0, p1, :cond_4

    .line 75
    .line 76
    const/4 p1, 0x6

    .line 77
    if-ne p0, p1, :cond_5

    .line 78
    .line 79
    :cond_4
    const/16 v0, 0x1000

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    const/4 v0, 0x2

    .line 83
    :goto_0
    invoke-static {v6}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->av1LevelNumberToConst(I)I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    const/4 p1, -0x1

    .line 88
    if-ne p0, p1, :cond_6

    .line 89
    .line 90
    const-string p0, "Unknown AV1 level: "

    .line 91
    .line 92
    invoke-static {v6, p0, v4}, Ls/a;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    return-object v3

    .line 96
    :cond_6
    new-instance p1, Landroid/util/Pair;

    .line 97
    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    return-object p1

    .line 110
    :catch_0
    invoke-static {v2, p0, v4}, LA/g;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-object v3
.end method

.method private static getAvcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "MediaCodecUtil"

    .line 4
    .line 5
    const-string v3, "Ignoring malformed AVC codec string: "

    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    if-ge v0, v4, :cond_0

    .line 9
    .line 10
    invoke-static {v3, p0, v2}, LA/g;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    :try_start_0
    aget-object v5, p1, v0

    .line 16
    .line 17
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    const/4 v6, 0x6

    .line 22
    if-ne v5, v6, :cond_1

    .line 23
    .line 24
    aget-object v5, p1, v0

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const/16 v5, 0x10

    .line 32
    .line 33
    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    aget-object p1, p1, v0

    .line 38
    .line 39
    const/4 v0, 0x4

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    array-length v5, p1

    .line 50
    const/4 v6, 0x3

    .line 51
    if-lt v5, v6, :cond_4

    .line 52
    .line 53
    aget-object v0, p1, v0

    .line 54
    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    aget-object p1, p1, v4

    .line 60
    .line 61
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    move v4, v0

    .line 66
    :goto_0
    invoke-static {v4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->avcProfileNumberToConst(I)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    const/4 v0, -0x1

    .line 71
    if-ne p1, v0, :cond_2

    .line 72
    .line 73
    const-string p0, "Unknown AVC profile: "

    .line 74
    .line 75
    invoke-static {v4, p0, v2}, Ls/a;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-object v1

    .line 79
    :cond_2
    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->avcLevelNumberToConst(I)I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-ne v3, v0, :cond_3

    .line 84
    .line 85
    const-string p1, "Unknown AVC level: "

    .line 86
    .line 87
    invoke-static {p0, p1, v2}, Ls/a;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-object v1

    .line 91
    :cond_3
    new-instance p0, Landroid/util/Pair;

    .line 92
    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    return-object p0

    .line 105
    :cond_4
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {v2, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    .line 119
    .line 120
    return-object v1

    .line 121
    :catch_0
    invoke-static {v3, p0, v2}, LA/g;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    return-object v1
.end method

.method private static getCodecMimeType(Landroid/media/MediaCodecInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "video/dolby-vision"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "OMX.MS.HEVCDV.Decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "video/hevcdv"

    return-object p0

    :cond_2
    const-string p0, "OMX.RTK.video.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "OMX.realtek.video.decoder.tunneled"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_3
    const-string p0, "video/dv_hevc"

    return-object p0

    :cond_4
    const-string p0, "audio/alac"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "OMX.lge.alac.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "audio/x-lg-alac"

    return-object p0

    :cond_5
    const-string p0, "audio/flac"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "OMX.lge.flac.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "audio/x-lg-flac"

    return-object p0

    :cond_6
    const-string p0, "audio/ac3"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "OMX.lge.ac3.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "audio/lg-ac3"

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCodecProfileAndLevel(Landroidx/media3/common/Format;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Format;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "video/dolby-vision"

    iget-object v3, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDolbyVisionProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    sparse-switch v4, :sswitch_data_0

    :goto_0
    const/4 v2, -0x1

    goto :goto_1

    :sswitch_0
    const-string v2, "vp09"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_1
    const-string v2, "mp4a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_2
    const-string v2, "hvc1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_3
    const-string v2, "hev1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "avc2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_5
    const-string v2, "avc1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_6
    const-string v4, "av01"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    :cond_8
    :goto_1
    packed-switch v2, :pswitch_data_0

    return-object v1

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getVp9ProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getAacCodecProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object v1, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    iget-object p0, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v1, v0, p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getHevcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;Landroidx/media3/common/ColorInfo;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {p0, v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getAvcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object v1, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    iget-object p0, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-static {v1, v0, p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getAv1ProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;Landroidx/media3/common/ColorInfo;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2dd8f6 -> :sswitch_6
        0x2ddf23 -> :sswitch_5
        0x2ddf24 -> :sswitch_4
        0x30d038 -> :sswitch_3
        0x310dbc -> :sswitch_2
        0x333790 -> :sswitch_1
        0x374e43 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDecoderInfo(Ljava/lang/String;ZZ)Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    :goto_0
    return-object p0
.end method

.method public static declared-synchronized getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "MediaCodecList API didn\'t list secure decoder for: "

    const-class v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;

    monitor-enter v1

    :try_start_0
    new-instance v2, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;

    invoke-direct {v2, p0, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;-><init>(Ljava/lang/String;ZZ)V

    sget-object v3, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->decoderInfosCache:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    monitor-exit v1

    return-object v4

    :cond_0
    :try_start_1
    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/4 v5, 0x0

    const/16 v6, 0x15

    if-lt v4, v6, :cond_1

    new-instance v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;

    invoke-direct {v7, p1, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;-><init>(ZZ)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    new-instance v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;

    invoke-direct {v7, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;-><init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$1;)V

    :goto_0
    invoke-static {v2, v7}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfosInternal(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    if-gt v6, v4, :cond_2

    const/16 p1, 0x17

    if-gt v4, p1, :cond_2

    new-instance p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;

    invoke-direct {p1, v5}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV16;-><init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$1;)V

    invoke-static {v2, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfosInternal(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "MediaCodecUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Assuming: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {p0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->applyWorkarounds(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {v3, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object p0

    :goto_1
    monitor-exit v1

    throw p0
.end method

.method private static getDecoderInfosInternal(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;)Ljava/util/ArrayList;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "secure-playback"

    const-string v4, "tunneled-playback"

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v15, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->mimeType:Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->getCodecCount()I

    move-result v14

    invoke-interface/range {p1 .. p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->secureDecodersExplicit()Z

    move-result v13

    const/4 v0, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v14, :cond_d

    invoke-interface {v2, v12}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isAlias(Landroid/media/MediaCodecInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_1
    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v18, v14

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11, v13, v15}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isCodecUsableDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v0, v11, v15}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getCodecMimeType(Landroid/media/MediaCodecInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-virtual {v0, v10}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v9

    invoke-interface {v2, v4, v10, v9}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v6

    invoke-interface {v2, v4, v10, v9}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureRequired(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v7

    iget-boolean v8, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->tunneling:Z

    if-nez v8, :cond_4

    if-nez v7, :cond_0

    :cond_4
    if-eqz v8, :cond_5

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {v2, v3, v10, v9}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v6

    invoke-interface {v2, v3, v10, v9}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;->isFeatureRequired(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v7

    iget-boolean v8, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->secure:Z

    if-nez v8, :cond_6

    if-nez v7, :cond_0

    :cond_6
    if-eqz v8, :cond_7

    if-nez v6, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {v0, v15}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isHardwareAccelerated(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result v16

    invoke-static {v0, v15}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isSoftwareOnly(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result v17

    invoke-static {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isVendor(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    if-eqz v13, :cond_8

    iget-boolean v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->secure:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eq v7, v6, :cond_9

    goto :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v20, v10

    move-object v1, v11

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v18, v14

    goto/16 :goto_5

    :cond_8
    :goto_2
    if-nez v13, :cond_a

    :try_start_2
    iget-boolean v7, v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$CodecKey;->secure:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v7, :cond_a

    :cond_9
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v6, v11

    move-object v7, v15

    move-object v8, v10

    move-object/from16 v20, v10

    move/from16 v10, v16

    move-object/from16 v21, v11

    move/from16 v11, v17

    move/from16 v22, v12

    move v12, v0

    move/from16 v23, v13

    move/from16 v13, v18

    move/from16 v18, v14

    move/from16 v14, v19

    :try_start_3
    invoke-static/range {v6 .. v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :catch_1
    move-exception v0

    :goto_3
    move-object/from16 v1, v21

    goto :goto_5

    :cond_a
    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v18, v14

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v18, v14

    goto :goto_3

    :goto_4
    if-nez v23, :cond_b

    if-eqz v6, :cond_b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v14, v21

    :try_start_4
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".secure"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    const/4 v13, 0x0

    const/16 v19, 0x1

    move-object v7, v15

    move-object/from16 v8, v20

    move/from16 v10, v16

    move/from16 v11, v17

    move v12, v0

    move-object v1, v14

    move/from16 v14, v19

    :try_start_5
    invoke-static/range {v6 .. v14}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    return-object v5

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v1, v14

    :goto_5
    :try_start_6
    sget v6, Landroidx/media3/common/util/Util;->SDK_INT:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    const/16 v7, 0x17

    const-string v8, "MediaCodecUtil"

    if-gt v6, v7, :cond_c

    :try_start_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping codec "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (failed to query capabilities)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_6
    add-int/lit8 v12, v22, 0x1

    move-object/from16 v1, p0

    move/from16 v14, v18

    move/from16 v13, v23

    goto/16 :goto_0

    :catch_5
    move-exception v0

    goto :goto_7

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to query codec "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_d
    return-object v5

    :goto_7
    new-instance v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$DecoderQueryException;-><init>(Ljava/lang/Throwable;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$1;)V

    throw v1
.end method

.method public static getDecoderInfosSoftMatch(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;",
            "Landroidx/media3/common/Format;",
            "ZZ)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    move-object v1, p0

    check-cast v1, LA/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1, p2, p3}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getAlternativeDecoderInfos(Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;Landroidx/media3/common/Format;ZZ)Ljava/util/List;

    move-result-object p0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static getDecoderInfosSortedByFormatSupport(Ljava/util/List;Landroidx/media3/common/Format;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;",
            "Landroidx/media3/common/Format;",
            ")",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Landroidx/media3/exoplayer/mediacodec/d;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/mediacodec/d;-><init>(Landroidx/media3/common/Format;)V

    invoke-static {v0, p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->sortByScore(Ljava/util/List;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;)V

    return-object v0
.end method

.method public static getDecryptOnlyDecoderInfo()Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;
    .locals 2

    const-string v0, "audio/raw"

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;ZZ)Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method private static getDolbyVisionProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x3

    .line 3
    const-string v2, "Ignoring malformed Dolby Vision codec string: "

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const-string v4, "MediaCodecUtil"

    .line 7
    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    invoke-static {v2, p0, v4}, LA/g;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v3

    .line 14
    :cond_0
    sget-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    aget-object v5, p1, v1

    .line 18
    .line 19
    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-nez v5, :cond_1

    .line 28
    .line 29
    invoke-static {v2, p0, v4}, LA/g;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object v3

    .line 33
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->dolbyVisionStringToProfile(Ljava/lang/String;)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    const-string p1, "Unknown Dolby Vision profile string: "

    .line 44
    .line 45
    :goto_0
    invoke-static {p1, p0, v4}, LA/g;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object v3

    .line 49
    :cond_2
    const/4 p0, 0x2

    .line 50
    aget-object p0, p1, p0

    .line 51
    .line 52
    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->dolbyVisionStringToLevel(Ljava/lang/String;)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-nez p1, :cond_3

    .line 57
    .line 58
    const-string p1, "Unknown Dolby Vision level string: "

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    new-instance p0, Landroid/util/Pair;

    .line 62
    .line 63
    invoke-direct {p0, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    return-object p0
.end method

.method private static getHevcProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;Landroidx/media3/common/ColorInfo;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroidx/media3/common/ColorInfo;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x4

    .line 3
    const-string v2, "Ignoring malformed HEVC codec string: "

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const-string v4, "MediaCodecUtil"

    .line 7
    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    invoke-static {v2, p0, v4}, LA/g;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v3

    .line 14
    :cond_0
    sget-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->PROFILE_PATTERN:Ljava/util/regex/Pattern;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    aget-object v5, p1, v1

    .line 18
    .line 19
    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-nez v5, :cond_1

    .line 28
    .line 29
    invoke-static {v2, p0, v4}, LA/g;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-object v3

    .line 33
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string v0, "1"

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const-string v0, "2"

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_5

    .line 53
    .line 54
    if-eqz p2, :cond_3

    .line 55
    .line 56
    iget p0, p2, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    .line 57
    .line 58
    const/4 p2, 0x6

    .line 59
    if-ne p0, p2, :cond_3

    .line 60
    .line 61
    const/16 v1, 0x1000

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const/4 v1, 0x2

    .line 65
    :goto_0
    const/4 p0, 0x3

    .line 66
    aget-object p0, p1, p0

    .line 67
    .line 68
    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->hevcCodecStringToProfileLevel(Ljava/lang/String;)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-nez p1, :cond_4

    .line 73
    .line 74
    const-string p1, "Unknown HEVC level string: "

    .line 75
    .line 76
    :goto_1
    invoke-static {p1, p0, v4}, LA/g;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-object v3

    .line 80
    :cond_4
    new-instance p0, Landroid/util/Pair;

    .line 81
    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-direct {p0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return-object p0

    .line 90
    :cond_5
    const-string p1, "Unknown HEVC profile string: "

    .line 91
    .line 92
    goto :goto_1
.end method

.method private static getVp9ProfileAndLevel(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x3

    .line 3
    const-string v2, "Ignoring malformed VP9 codec string: "

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const-string v4, "MediaCodecUtil"

    .line 7
    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    invoke-static {v2, p0, v4}, LA/g;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v3

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    :try_start_0
    aget-object v0, p1, v0

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x2

    .line 22
    aget-object p1, p1, v1

    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    invoke-static {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->vp9ProfileNumberToConst(I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const/4 v1, -0x1

    .line 33
    if-ne p1, v1, :cond_1

    .line 34
    .line 35
    const-string p0, "Unknown VP9 profile: "

    .line 36
    .line 37
    invoke-static {v0, p0, v4}, Ls/a;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v3

    .line 41
    :cond_1
    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->vp9LevelNumberToConst(I)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-ne v0, v1, :cond_2

    .line 46
    .line 47
    const-string p1, "Unknown VP9 level: "

    .line 48
    .line 49
    invoke-static {p0, p1, v4}, Ls/a;->f(ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v3

    .line 53
    :cond_2
    new-instance p0, Landroid/util/Pair;

    .line 54
    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-direct {p0, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    return-object p0

    .line 67
    :catch_0
    invoke-static {v2, p0, v4}, LA/g;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object v3
.end method

.method private static hevcCodecStringToProfileLevel(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "L186"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v7, 0x19

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "L183"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v7, 0x18

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "L180"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v7, 0x17

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "L156"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v7, 0x16

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "L153"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v7, 0x15

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "L150"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v7, 0x14

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "L123"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v7, 0x13

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "L120"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v7, 0x12

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "H186"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v7, 0x11

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "H183"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v7, 0x10

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "H180"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v7, 0xf

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "H156"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v7, 0xe

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "H153"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v7, 0xd

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "H150"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v7, 0xc

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "H123"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v7, 0xb

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "H120"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v7, 0xa

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "L93"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v7, 0x9

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "L90"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v7, 0x8

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "L63"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_0

    :cond_13
    const/4 v7, 0x7

    goto :goto_0

    :sswitch_13
    const-string v1, "L60"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto :goto_0

    :cond_14
    const/4 v7, 0x6

    goto :goto_0

    :sswitch_14
    const-string v1, "L30"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_0

    :cond_15
    const/4 v7, 0x5

    goto :goto_0

    :sswitch_15
    const-string v1, "H93"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_0

    :cond_16
    const/4 v7, 0x4

    goto :goto_0

    :sswitch_16
    const-string v1, "H90"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_0

    :cond_17
    const/4 v7, 0x3

    goto :goto_0

    :sswitch_17
    const-string v1, "H63"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_18
    const-string v1, "H60"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_0

    :cond_19
    const/4 v7, 0x1

    goto :goto_0

    :sswitch_19
    const-string v1, "H30"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v7, 0x0

    :goto_0
    packed-switch v7, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/high16 p0, 0x1000000

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    const/high16 p0, 0x400000

    goto :goto_1

    :pswitch_2
    const/high16 p0, 0x100000

    goto :goto_1

    :pswitch_3
    const/high16 p0, 0x40000

    goto :goto_1

    :pswitch_4
    const/high16 p0, 0x10000

    goto :goto_1

    :pswitch_5
    const/16 p0, 0x4000

    goto :goto_1

    :pswitch_6
    const/16 p0, 0x1000

    goto :goto_1

    :pswitch_7
    const/16 p0, 0x400

    goto :goto_1

    :pswitch_8
    const/high16 p0, 0x2000000

    goto :goto_1

    :pswitch_9
    const/high16 p0, 0x800000

    goto :goto_1

    :pswitch_a
    const/high16 p0, 0x200000

    goto :goto_1

    :pswitch_b
    const/high16 p0, 0x80000

    goto :goto_1

    :pswitch_c
    const/high16 p0, 0x20000

    goto :goto_1

    :pswitch_d
    const p0, 0x8000

    goto :goto_1

    :pswitch_e
    const/16 p0, 0x2000

    goto :goto_1

    :pswitch_f
    const/16 p0, 0x800

    goto :goto_1

    :pswitch_10
    const/16 p0, 0x100

    goto :goto_1

    :pswitch_11
    const/16 p0, 0x40

    goto :goto_1

    :pswitch_12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_14
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_15
    const/16 p0, 0x200

    goto :goto_1

    :pswitch_16
    const/16 p0, 0x80

    goto :goto_1

    :pswitch_17
    const/16 p0, 0x20

    goto :goto_1

    :pswitch_18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x114a5 -> :sswitch_19
        0x11502 -> :sswitch_18
        0x11505 -> :sswitch_17
        0x1155f -> :sswitch_16
        0x11562 -> :sswitch_15
        0x123a9 -> :sswitch_14
        0x12406 -> :sswitch_13
        0x12409 -> :sswitch_12
        0x12463 -> :sswitch_11
        0x12466 -> :sswitch_10
        0x2178e7 -> :sswitch_f
        0x2178ea -> :sswitch_e
        0x217944 -> :sswitch_d
        0x217947 -> :sswitch_c
        0x21794a -> :sswitch_b
        0x2179a1 -> :sswitch_a
        0x2179a4 -> :sswitch_9
        0x2179a7 -> :sswitch_8
        0x234a63 -> :sswitch_7
        0x234a66 -> :sswitch_6
        0x234ac0 -> :sswitch_5
        0x234ac3 -> :sswitch_4
        0x234ac6 -> :sswitch_3
        0x234b1d -> :sswitch_2
        0x234b20 -> :sswitch_1
        0x234b23 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isAlias(Landroid/media/MediaCodecInfo;)Z
    .locals 2

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isAliasV29(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isAliasV29(Landroid/media/MediaCodecInfo;)Z
    .locals 0

    invoke-static {p0}, LA/d;->D(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    return p0
.end method

.method private static isCodecUsableDecoder(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_10

    if-nez p2, :cond_0

    const-string p0, ".secure"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget p0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 p2, 0x15

    if-ge p0, p2, :cond_2

    const-string p2, "CIPAACDecoder"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "CIPMP3Decoder"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "CIPVorbisDecoder"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "CIPAMRNBDecoder"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "AACDecoder"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "MP3Decoder"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    return v0

    :cond_2
    const/16 p2, 0x12

    if-ge p0, p2, :cond_4

    const-string p2, "OMX.MTK.AUDIO.DECODER.AAC"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "a70"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Xiaomi"

    sget-object v2, Landroidx/media3/common/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "HM"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    return v0

    :cond_4
    const/16 p2, 0x10

    if-ne p0, p2, :cond_6

    const-string v1, "OMX.qcom.audio.decoder.mp3"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "dlxu"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "protou"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "ville"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "villeplus"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "villec2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "gee"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "C6602"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "C6603"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "C6606"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "C6616"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "L36h"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "SO-02E"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    return v0

    :cond_6
    if-ne p0, p2, :cond_8

    const-string p2, "OMX.qcom.audio.decoder.aac"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    sget-object p2, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    const-string v1, "C1504"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "C1505"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "C1604"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "C1605"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    :cond_7
    return v0

    :cond_8
    const/16 p2, 0x18

    const-string v1, "samsung"

    if-ge p0, p2, :cond_b

    const-string p2, "OMX.SEC.aac.dec"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    const-string p2, "OMX.Exynos.AAC.Decoder"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    :cond_9
    sget-object p2, Landroidx/media3/common/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    sget-object p2, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    const-string v2, "zeroflte"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "zerolte"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "zenlte"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "SC-05G"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "marinelteatt"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "404SC"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "SC-04G"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "SCV31"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    :cond_a
    return v0

    :cond_b
    const-string p2, "jflte"

    const/16 v2, 0x13

    if-gt p0, v2, :cond_d

    const-string v3, "OMX.SEC.vp8.dec"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v3, Landroidx/media3/common/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    const-string v3, "d2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "serrano"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "santos"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "t0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    return v0

    :cond_d
    if-gt p0, v2, :cond_e

    sget-object v1, Landroidx/media3/common/util/Util;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    const-string p2, "OMX.qcom.video.decoder.vp8"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    return v0

    :cond_e
    const/16 p2, 0x17

    if-gt p0, p2, :cond_f

    const-string p0, "audio/eac3-joc"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const-string p0, "OMX.MTK.AUDIO.DECODER.DSPAC3"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    return v0

    :cond_f
    const/4 p0, 0x1

    return p0

    :cond_10
    :goto_0
    return v0
.end method

.method private static isHardwareAccelerated(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z
    .locals 2

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isHardwareAcceleratedV29(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isSoftwareOnly(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static isHardwareAcceleratedV29(Landroid/media/MediaCodecInfo;)Z
    .locals 0

    invoke-static {p0}, LA/d;->A(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    return p0
.end method

.method private static isSoftwareOnly(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Z
    .locals 2

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isSoftwareOnlyV29(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "arc."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const-string p1, "omx.google."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "omx.ffmpeg."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "omx.sec."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, ".sw."

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_3
    const-string p1, "omx.qcom.video.decoder.hevcswvdec"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "c2.android."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "c2.google."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "omx."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "c2."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_0
    return v0
.end method

.method private static isSoftwareOnlyV29(Landroid/media/MediaCodecInfo;)Z
    .locals 0

    invoke-static {p0}, LA/d;->u(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    return p0
.end method

.method private static isVendor(Landroid/media/MediaCodecInfo;)Z
    .locals 2

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->isVendorV29(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "omx.google."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "c2.android."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "c2.google."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isVendorV29(Landroid/media/MediaCodecInfo;)Z
    .locals 0

    invoke-static {p0}, LA/d;->C(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$applyWorkarounds$1(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)I
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v0, "OMX.google"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "c2.android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$applyWorkarounds$2(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)I
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v0, "OMX.google"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getDecoderInfosSortedByFormatSupport$0(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)I
    .locals 0

    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->isFormatFunctionallySupported(Landroidx/media3/common/Format;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$sortByScore$3(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    invoke-interface {p0, p2}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;->getScore(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;->getScore(Ljava/lang/Object;)I

    move-result p0

    sub-int/2addr p2, p0

    return p2
.end method

.method public static maxH264DecodableFrameSize()I
    .locals 5

    sget v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const-string v0, "video/avc"

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->getDecoderInfo(Ljava/lang/String;ZZ)Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->getProfileLevels()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    iget v4, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v4}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->avcLevelToMaxFrameSize(I)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    const v0, 0x54600

    goto :goto_1

    :cond_1
    const v0, 0x2a300

    :goto_1
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_2
    sput v1, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    :cond_3
    sget v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->maxH264DecodableFrameSize:I

    return v0
.end method

.method private static mp4aAudioObjectTypeToProfile(I)I
    .locals 1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_0

    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    const/16 v0, 0x17

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x27

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/4 p0, 0x6

    return p0

    :pswitch_1
    const/4 p0, 0x5

    return p0

    :pswitch_2
    const/4 p0, 0x4

    return p0

    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_4
    const/4 p0, 0x2

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static sortByScore(Ljava/util/List;Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Landroidx/media3/exoplayer/mediacodec/e;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/mediacodec/e;-><init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private static vp9LevelNumberToConst(I)I
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_9

    const/16 v0, 0xb

    if-eq p0, v0, :cond_8

    const/16 v0, 0x14

    if-eq p0, v0, :cond_7

    const/16 v0, 0x15

    if-eq p0, v0, :cond_6

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_5

    const/16 v0, 0x1f

    if-eq p0, v0, :cond_4

    const/16 v0, 0x28

    if-eq p0, v0, :cond_3

    const/16 v0, 0x29

    if-eq p0, v0, :cond_2

    const/16 v0, 0x32

    if-eq p0, v0, :cond_1

    const/16 v0, 0x33

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/16 p0, 0x2000

    return p0

    :pswitch_1
    const/16 p0, 0x1000

    return p0

    :pswitch_2
    const/16 p0, 0x800

    return p0

    :cond_0
    const/16 p0, 0x200

    return p0

    :cond_1
    const/16 p0, 0x100

    return p0

    :cond_2
    const/16 p0, 0x80

    return p0

    :cond_3
    const/16 p0, 0x40

    return p0

    :cond_4
    const/16 p0, 0x20

    return p0

    :cond_5
    const/16 p0, 0x10

    return p0

    :cond_6
    const/16 p0, 0x8

    return p0

    :cond_7
    const/4 p0, 0x4

    return p0

    :cond_8
    const/4 p0, 0x2

    return p0

    :cond_9
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static vp9ProfileNumberToConst(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    const/4 v1, 0x2

    if-eq p0, v0, :cond_2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, 0x8

    return p0

    :cond_1
    const/4 p0, 0x4

    return p0

    :cond_2
    return v1

    :cond_3
    return v0
.end method
