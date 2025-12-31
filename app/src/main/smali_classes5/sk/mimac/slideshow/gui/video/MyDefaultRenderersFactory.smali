.class public Lsk/mimac/slideshow/gui/video/MyDefaultRenderersFactory;
.super Landroidx/media3/exoplayer/DefaultRenderersFactory;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UnsafeOptInUsageError"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/gui/video/MyDefaultRenderersFactory$CustomMediaCodecVideoRenderer;
    }
.end annotation


# static fields
.field private static final AUDIO_FORMATS:[I


# instance fields
.field private rotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x7

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/16 v3, 0x8

    const/4 v4, 0x6

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x19

    if-lt v5, v6, :cond_0

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lsk/mimac/slideshow/gui/video/MyDefaultRenderersFactory;->AUDIO_FORMATS:[I

    goto :goto_0

    :cond_0
    const/16 v6, 0x17

    if-lt v5, v6, :cond_1

    filled-new-array {v2, v1, v4, v0, v3}, [I

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/gui/video/MyDefaultRenderersFactory;->AUDIO_FORMATS:[I

    goto :goto_0

    :cond_1
    filled-new-array {v2, v1, v4}, [I

    move-result-object v0

    sput-object v0, Lsk/mimac/slideshow/gui/video/MyDefaultRenderersFactory;->AUDIO_FORMATS:[I

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x2
        0x5
        0x6
        0x7
        0x8
        0xe
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lsk/mimac/slideshow/gui/video/MyDefaultRenderersFactory;->rotation:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->setEnableDecoderFallback(Z)Landroidx/media3/exoplayer/DefaultRenderersFactory;

    return-void
.end method

.method public static synthetic access$000(Lsk/mimac/slideshow/gui/video/MyDefaultRenderersFactory;)I
    .locals 0

    iget p0, p0, Lsk/mimac/slideshow/gui/video/MyDefaultRenderersFactory;->rotation:I

    return p0
.end method


# virtual methods
.method public buildAudioSink(Landroid/content/Context;ZZ)Landroidx/media3/exoplayer/audio/AudioSink;
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->FORCE_AUDIO_PASSTHROUGH:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->setEnableFloatOutput(Z)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->setEnableAudioTrackPlaybackParams(Z)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;

    move-result-object p1

    new-instance p2, Landroidx/media3/exoplayer/audio/AudioCapabilities;

    sget-object p3, Lsk/mimac/slideshow/gui/video/MyDefaultRenderersFactory;->AUDIO_FORMATS:[I

    const/16 v0, 0xa

    invoke-direct {p2, p3, v0}, Landroidx/media3/exoplayer/audio/AudioCapabilities;-><init>([II)V

    invoke-virtual {p1, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->setAudioCapabilities(Landroidx/media3/exoplayer/audio/AudioCapabilities;)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->build()Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->setEnableFloatOutput(Z)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;->setEnableAudioTrackPlaybackParams(Z)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Builder;

    move-result-object p1

    goto :goto_0
.end method

.method public buildVideoRenderers(Landroid/content/Context;ILandroidx/media3/exoplayer/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;JLjava/util/ArrayList;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;",
            "Z",
            "Landroid/os/Handler;",
            "Landroidx/media3/exoplayer/video/VideoRendererEventListener;",
            "J",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/Renderer;",
            ">;)V"
        }
    .end annotation

    move/from16 v0, p2

    move-object/from16 v12, p9

    const/4 v15, 0x4

    const/16 v16, 0x1

    const/4 v11, 0x2

    const-string v10, "DefaultRenderersFactory"

    const-class v17, Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    const-class v18, Landroid/os/Handler;

    new-instance v9, Lsk/mimac/slideshow/gui/video/MyDefaultRenderersFactory$CustomMediaCodecVideoRenderer;

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/DefaultRenderersFactory;->getCodecAdapterFactory()Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    move-result-object v4

    const/16 v19, 0x32

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-wide/from16 v6, p7

    move/from16 v8, p4

    move-object v13, v9

    move-object/from16 v9, p5

    move-object/from16 v20, v10

    move-object/from16 v10, p6

    const/4 v14, 0x2

    move/from16 v11, v19

    invoke-direct/range {v1 .. v11}, Lsk/mimac/slideshow/gui/video/MyDefaultRenderersFactory$CustomMediaCodecVideoRenderer;-><init>(Lsk/mimac/slideshow/gui/video/MyDefaultRenderersFactory;Landroid/content/Context;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;Landroidx/media3/exoplayer/mediacodec/MediaCodecSelector;JZLandroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;I)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v14, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    const/16 v0, 0x32

    :try_start_0
    const-string v2, "androidx.media3.decoder.vp9.LibvpxVideoRenderer"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v15, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    aput-object v18, v3, v16

    aput-object v17, v3, v14

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v15, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    aput-object p5, v5, v16

    aput-object p6, v5, v14

    const/4 v3, 0x3

    aput-object v4, v5, v3

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/Renderer;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v1, 0x1

    :try_start_1
    invoke-virtual {v12, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "Loaded LibvpxVideoRenderer."
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v2, v20

    :try_start_2
    invoke-static {v2, v1}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    :goto_0
    move v1, v3

    goto :goto_2

    :catch_2
    move-object/from16 v2, v20

    goto :goto_0

    :catch_3
    move-object/from16 v2, v20

    goto :goto_2

    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating VP9 extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_2
    move v3, v1

    :goto_3
    :try_start_3
    const-string v1, "androidx.media3.decoder.av1.Libgav1VideoRenderer"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v4, v15, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    aput-object v18, v4, v16

    aput-object v17, v4, v14

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v5, v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v5, v15, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    aput-object p5, v5, v16

    aput-object p6, v5, v14

    const/4 v4, 0x3

    aput-object v0, v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/Renderer;

    invoke-virtual {v12, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "Loaded Libgav1VideoRenderer."

    invoke-static {v2, v0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating AV1 extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    :goto_4
    return-void
.end method

.method public setRotation(I)V
    .locals 0

    iput p1, p0, Lsk/mimac/slideshow/gui/video/MyDefaultRenderersFactory;->rotation:I

    return-void
.end method
