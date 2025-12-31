.class public final Landroidx/media3/extractor/DefaultExtractorsFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ExtractorsFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;
    }
.end annotation


# static fields
.field private static final DEFAULT_EXTRACTOR_ORDER:[I

.field private static final FLAC_EXTENSION_LOADER:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

.field private static final MIDI_EXTENSION_LOADER:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;


# instance fields
.field private adtsFlags:I

.field private amrFlags:I

.field private constantBitrateSeekingAlwaysEnabled:Z

.field private constantBitrateSeekingEnabled:Z

.field private flacFlags:I

.field private fragmentedMp4Flags:I

.field private jpegFlags:I

.field private matroskaFlags:I

.field private mp3Flags:I

.field private mp4Flags:I

.field private subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

.field private textTrackTranscodingEnabled:Z

.field private tsFlags:I

.field private tsMode:I

.field private tsSubtitleFormats:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field private tsTimestampSearchBytes:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x14

    const/4 v1, 0x3

    const/4 v2, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/DefaultExtractorsFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    new-instance v0, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    new-instance v3, LA0/a;

    invoke-direct {v3, v2}, LA0/a;-><init>(I)V

    invoke-direct {v0, v3}, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;-><init>(Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;)V

    sput-object v0, Landroidx/media3/extractor/DefaultExtractorsFactory;->FLAC_EXTENSION_LOADER:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    new-instance v0, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    new-instance v2, LA0/a;

    invoke-direct {v2, v1}, LA0/a;-><init>(I)V

    invoke-direct {v0, v2}, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;-><init>(Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;)V

    sput-object v0, Landroidx/media3/extractor/DefaultExtractorsFactory;->MIDI_EXTENSION_LOADER:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    return-void

    :array_0
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0x10
        0xf
        0xe
        0x11
        0x12
        0x13
        0x14
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsMode:I

    const v0, 0x1b8a0

    iput v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsTimestampSearchBytes:I

    new-instance v0, Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;

    invoke-direct {v0}, Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    return-void
.end method

.method public static synthetic a()Ljava/lang/reflect/Constructor;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/media3/extractor/DefaultExtractorsFactory;->getFlacExtractorConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method private addExtractorsForFileType(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/Extractor;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    :pswitch_1
    iget p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->mp4Flags:I

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_8

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_8

    new-instance p1, Landroidx/media3/extractor/heif/HeifExtractor;

    invoke-direct {p1}, Landroidx/media3/extractor/heif/HeifExtractor;-><init>()V

    :goto_0
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :pswitch_2
    new-instance p1, Landroidx/media3/extractor/bmp/BmpExtractor;

    invoke-direct {p1}, Landroidx/media3/extractor/bmp/BmpExtractor;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance p1, Landroidx/media3/extractor/webp/WebpExtractor;

    invoke-direct {p1}, Landroidx/media3/extractor/webp/WebpExtractor;-><init>()V

    goto :goto_0

    :pswitch_4
    new-instance p1, Landroidx/media3/extractor/png/PngExtractor;

    invoke-direct {p1}, Landroidx/media3/extractor/png/PngExtractor;-><init>()V

    goto :goto_0

    :pswitch_5
    new-instance p1, Landroidx/media3/extractor/avi/AviExtractor;

    iget-boolean v1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->textTrackTranscodingEnabled:Z

    xor-int/2addr v0, v1

    iget-object v1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {p1, v0, v1}, Landroidx/media3/extractor/avi/AviExtractor;-><init>(ILandroidx/media3/extractor/text/SubtitleParser$Factory;)V

    goto :goto_0

    :pswitch_6
    sget-object p1, Landroidx/media3/extractor/DefaultExtractorsFactory;->MIDI_EXTENSION_LOADER:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->getExtractor([Ljava/lang/Object;)Landroidx/media3/extractor/Extractor;

    move-result-object p1

    if-eqz p1, :cond_8

    :goto_1
    goto :goto_0

    :pswitch_7
    new-instance p1, Landroidx/media3/extractor/jpeg/JpegExtractor;

    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->jpegFlags:I

    invoke-direct {p1, v0}, Landroidx/media3/extractor/jpeg/JpegExtractor;-><init>(I)V

    goto :goto_0

    :pswitch_8
    new-instance p1, Landroidx/media3/extractor/wav/WavExtractor;

    invoke-direct {p1}, Landroidx/media3/extractor/wav/WavExtractor;-><init>()V

    goto :goto_0

    :pswitch_9
    iget-object p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsSubtitleFormats:Lcom/google/common/collect/ImmutableList;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsSubtitleFormats:Lcom/google/common/collect/ImmutableList;

    :cond_0
    new-instance p1, Landroidx/media3/extractor/ts/TsExtractor;

    iget v2, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsMode:I

    iget-boolean v1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->textTrackTranscodingEnabled:Z

    xor-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    new-instance v5, Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v0, 0x0

    invoke-direct {v5, v0, v1}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    new-instance v6, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsFlags:I

    iget-object v1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsSubtitleFormats:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v6, v0, v1}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    iget v7, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsTimestampSearchBytes:I

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Landroidx/media3/extractor/ts/TsExtractor;-><init>(IILandroidx/media3/extractor/text/SubtitleParser$Factory;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/TsPayloadReader$Factory;I)V

    goto :goto_0

    :pswitch_a
    new-instance p1, Landroidx/media3/extractor/ts/PsExtractor;

    invoke-direct {p1}, Landroidx/media3/extractor/ts/PsExtractor;-><init>()V

    goto :goto_0

    :pswitch_b
    new-instance p1, Landroidx/media3/extractor/ogg/OggExtractor;

    invoke-direct {p1}, Landroidx/media3/extractor/ogg/OggExtractor;-><init>()V

    goto :goto_0

    :pswitch_c
    new-instance p1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;

    iget-object v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    iget v1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->fragmentedMp4Flags:I

    iget-boolean v3, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->textTrackTranscodingEnabled:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    const/16 v3, 0x20

    :goto_2
    or-int/2addr v1, v3

    invoke-direct {p1, v0, v1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/media3/extractor/mp4/Mp4Extractor;

    iget-object v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    iget v1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->mp4Flags:I

    iget-boolean v3, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->textTrackTranscodingEnabled:Z

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    const/16 v2, 0x10

    :goto_3
    or-int/2addr v1, v2

    invoke-direct {p1, v0, v1}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    goto/16 :goto_0

    :pswitch_d
    new-instance p1, Landroidx/media3/extractor/mp3/Mp3Extractor;

    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->mp3Flags:I

    iget-boolean v3, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    or-int/2addr v0, v3

    iget-boolean v3, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingAlwaysEnabled:Z

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    :goto_4
    or-int/2addr v0, v1

    invoke-direct {p1, v0}, Landroidx/media3/extractor/mp3/Mp3Extractor;-><init>(I)V

    goto/16 :goto_0

    :pswitch_e
    new-instance p1, Landroidx/media3/extractor/mkv/MatroskaExtractor;

    iget-object v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    iget v3, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->matroskaFlags:I

    iget-boolean v4, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->textTrackTranscodingEnabled:Z

    if-eqz v4, :cond_4

    const/4 v1, 0x0

    :cond_4
    or-int/2addr v1, v3

    invoke-direct {p1, v0, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    goto/16 :goto_0

    :pswitch_f
    new-instance p1, Landroidx/media3/extractor/flv/FlvExtractor;

    invoke-direct {p1}, Landroidx/media3/extractor/flv/FlvExtractor;-><init>()V

    goto/16 :goto_0

    :pswitch_10
    sget-object p1, Landroidx/media3/extractor/DefaultExtractorsFactory;->FLAC_EXTENSION_LOADER:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    iget v1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->flacFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->getExtractor([Ljava/lang/Object;)Landroidx/media3/extractor/Extractor;

    move-result-object p1

    if-eqz p1, :cond_5

    goto/16 :goto_1

    :cond_5
    new-instance p1, Landroidx/media3/extractor/flac/FlacExtractor;

    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->flacFlags:I

    invoke-direct {p1, v0}, Landroidx/media3/extractor/flac/FlacExtractor;-><init>(I)V

    goto/16 :goto_0

    :pswitch_11
    new-instance p1, Landroidx/media3/extractor/amr/AmrExtractor;

    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->amrFlags:I

    iget-boolean v3, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    or-int/2addr v0, v3

    iget-boolean v3, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingAlwaysEnabled:Z

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    or-int/2addr v0, v1

    invoke-direct {p1, v0}, Landroidx/media3/extractor/amr/AmrExtractor;-><init>(I)V

    goto/16 :goto_0

    :pswitch_12
    new-instance p1, Landroidx/media3/extractor/ts/AdtsExtractor;

    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->adtsFlags:I

    iget-boolean v3, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    or-int/2addr v0, v3

    iget-boolean v3, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingAlwaysEnabled:Z

    if-eqz v3, :cond_7

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    or-int/2addr v0, v1

    invoke-direct {p1, v0}, Landroidx/media3/extractor/ts/AdtsExtractor;-><init>(I)V

    goto/16 :goto_0

    :pswitch_13
    new-instance p1, Landroidx/media3/extractor/ts/Ac4Extractor;

    invoke-direct {p1}, Landroidx/media3/extractor/ts/Ac4Extractor;-><init>()V

    goto/16 :goto_0

    :pswitch_14
    new-instance p1, Landroidx/media3/extractor/ts/Ac3Extractor;

    invoke-direct {p1}, Landroidx/media3/extractor/ts/Ac3Extractor;-><init>()V

    goto/16 :goto_0

    :cond_8
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic b()Ljava/lang/reflect/Constructor;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/media3/extractor/DefaultExtractorsFactory;->getMidiExtractorConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method private static getFlacExtractorConstructor()Ljava/lang/reflect/Constructor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroidx/media3/extractor/Extractor;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "androidx.media3.decoder.flac.FlacLibrary"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isAvailable"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "androidx.media3.decoder.flac.FlacExtractor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/media3/extractor/Extractor;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v3
.end method

.method private static getMidiExtractorConstructor()Ljava/lang/reflect/Constructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroidx/media3/extractor/Extractor;",
            ">;"
        }
    .end annotation

    const-string v0, "androidx.media3.decoder.midi.MidiExtractor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/media3/extractor/Extractor;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized createExtractors()[Landroidx/media3/extractor/Extractor;
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/DefaultExtractorsFactory;->createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Landroidx/media3/extractor/Extractor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Landroidx/media3/extractor/Extractor;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Landroidx/media3/extractor/Extractor;"
        }
    .end annotation

    .line 2
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Landroidx/media3/extractor/DefaultExtractorsFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    array-length v2, v1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p2}, Landroidx/media3/common/FileTypes;->inferFileTypeFromResponseHeaders(Ljava/util/Map;)I

    move-result p2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    invoke-direct {p0, p2, v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;->addExtractorsForFileType(ILjava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    invoke-static {p1}, Landroidx/media3/common/FileTypes;->inferFileTypeFromUri(Landroid/net/Uri;)I

    move-result p1

    if-eq p1, v2, :cond_1

    if-eq p1, p2, :cond_1

    invoke-direct {p0, p1, v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;->addExtractorsForFileType(ILjava/util/List;)V

    :cond_1
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_3

    aget v5, v1, v4

    if-eq v5, p2, :cond_2

    if-eq v5, p1, :cond_2

    invoke-direct {p0, v5, v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;->addExtractorsForFileType(ILjava/util/List;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroidx/media3/extractor/Extractor;

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v3, p2, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/extractor/Extractor;

    iget-boolean v1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->textTrackTranscodingEnabled:Z

    if-eqz v1, :cond_4

    invoke-interface {p2}, Landroidx/media3/extractor/Extractor;->getUnderlyingImplementation()Landroidx/media3/extractor/Extractor;

    move-result-object v1

    instance-of v1, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;

    if-nez v1, :cond_4

    invoke-interface {p2}, Landroidx/media3/extractor/Extractor;->getUnderlyingImplementation()Landroidx/media3/extractor/Extractor;

    move-result-object v1

    instance-of v1, v1, Landroidx/media3/extractor/mp4/Mp4Extractor;

    if-nez v1, :cond_4

    invoke-interface {p2}, Landroidx/media3/extractor/Extractor;->getUnderlyingImplementation()Landroidx/media3/extractor/Extractor;

    move-result-object v1

    instance-of v1, v1, Landroidx/media3/extractor/ts/TsExtractor;

    if-nez v1, :cond_4

    invoke-interface {p2}, Landroidx/media3/extractor/Extractor;->getUnderlyingImplementation()Landroidx/media3/extractor/Extractor;

    move-result-object v1

    instance-of v1, v1, Landroidx/media3/extractor/avi/AviExtractor;

    if-nez v1, :cond_4

    invoke-interface {p2}, Landroidx/media3/extractor/Extractor;->getUnderlyingImplementation()Landroidx/media3/extractor/Extractor;

    move-result-object v1

    instance-of v1, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor;

    if-nez v1, :cond_4

    new-instance v1, Landroidx/media3/extractor/text/SubtitleTranscodingExtractor;

    iget-object v2, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {v1, p2, v2}, Landroidx/media3/extractor/text/SubtitleTranscodingExtractor;-><init>(Landroidx/media3/extractor/Extractor;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    move-object p2, v1

    :cond_4
    aput-object p2, p1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    monitor-exit p0

    return-object p1

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized experimentalSetTextTrackTranscodingEnabled(Z)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 0

    .line 1
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->textTrackTranscodingEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic experimentalSetTextTrackTranscodingEnabled(Z)Landroidx/media3/extractor/ExtractorsFactory;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/DefaultExtractorsFactory;->experimentalSetTextTrackTranscodingEnabled(Z)Landroidx/media3/extractor/DefaultExtractorsFactory;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized setJpegExtractorFlags(I)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->jpegFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSubtitleParserFactory(Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 0

    .line 1
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->subtitleParserFactory:Landroidx/media3/extractor/text/SubtitleParser$Factory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic setSubtitleParserFactory(Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/extractor/ExtractorsFactory;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/DefaultExtractorsFactory;->setSubtitleParserFactory(Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/extractor/DefaultExtractorsFactory;

    move-result-object p1

    return-object p1
.end method
