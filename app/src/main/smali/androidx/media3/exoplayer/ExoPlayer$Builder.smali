.class public final Landroidx/media3/exoplayer/ExoPlayer$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field analyticsCollectorFunction:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function<",
            "Landroidx/media3/common/util/Clock;",
            "Landroidx/media3/exoplayer/analytics/AnalyticsCollector;",
            ">;"
        }
    .end annotation
.end field

.field audioAttributes:Landroidx/media3/common/AudioAttributes;

.field bandwidthMeterSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/upstream/BandwidthMeter;",
            ">;"
        }
    .end annotation
.end field

.field buildCalled:Z

.field clock:Landroidx/media3/common/util/Clock;

.field final context:Landroid/content/Context;

.field detachSurfaceTimeoutMs:J

.field deviceVolumeControlEnabled:Z

.field foregroundModeTimeoutMs:J

.field handleAudioBecomingNoisy:Z

.field handleAudioFocus:Z

.field livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

.field loadControlSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/LoadControl;",
            ">;"
        }
    .end annotation
.end field

.field looper:Landroid/os/Looper;

.field mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/source/MediaSource$Factory;",
            ">;"
        }
    .end annotation
.end field

.field pauseAtEndOfMediaItems:Z

.field playbackLooper:Landroid/os/Looper;

.field releaseTimeoutMs:J

.field renderersFactorySupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/RenderersFactory;",
            ">;"
        }
    .end annotation
.end field

.field seekBackIncrementMs:J

.field seekForwardIncrementMs:J

.field seekParameters:Landroidx/media3/exoplayer/SeekParameters;

.field skipSilenceEnabled:Z

.field suppressPlaybackOnUnsuitableOutput:Z

.field trackSelectorSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/trackselection/TrackSelector;",
            ">;"
        }
    .end annotation
.end field

.field useLazyPreparation:Z

.field usePlatformDiagnostics:Z

.field videoChangeFrameRateStrategy:I

.field videoScalingMode:I

.field wakeMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/media3/exoplayer/c;-><init>(Landroid/content/Context;I)V

    new-instance v1, Landroidx/media3/exoplayer/c;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Landroidx/media3/exoplayer/c;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/RenderersFactory;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/source/MediaSource$Factory;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v4, Landroidx/media3/exoplayer/c;

    const/4 v0, 0x2

    invoke-direct {v4, p1, v0}, Landroidx/media3/exoplayer/c;-><init>(Landroid/content/Context;I)V

    new-instance v5, Landroidx/media3/exoplayer/d;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v6, Landroidx/media3/exoplayer/c;

    const/4 v0, 0x3

    invoke-direct {v6, p1, v0}, Landroidx/media3/exoplayer/c;-><init>(Landroid/content/Context;I)V

    new-instance v7, Landroidx/media3/exoplayer/e;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Function;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/RenderersFactory;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/source/MediaSource$Factory;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/trackselection/TrackSelector;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/LoadControl;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Landroidx/media3/exoplayer/upstream/BandwidthMeter;",
            ">;",
            "Lcom/google/common/base/Function<",
            "Landroidx/media3/common/util/Clock;",
            "Landroidx/media3/exoplayer/analytics/AnalyticsCollector;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->renderersFactorySupplier:Lcom/google/common/base/Supplier;

    iput-object p3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

    iput-object p4, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->trackSelectorSupplier:Lcom/google/common/base/Supplier;

    iput-object p5, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->loadControlSupplier:Lcom/google/common/base/Supplier;

    iput-object p6, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->bandwidthMeterSupplier:Lcom/google/common/base/Supplier;

    iput-object p7, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->analyticsCollectorFunction:Lcom/google/common/base/Function;

    invoke-static {}, Landroidx/media3/common/util/Util;->getCurrentOrMainLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    sget-object p1, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->wakeMode:I

    const/4 p2, 0x1

    iput p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->videoScalingMode:I

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->videoChangeFrameRateStrategy:I

    iput-boolean p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->useLazyPreparation:Z

    sget-object p1, Landroidx/media3/exoplayer/SeekParameters;->DEFAULT:Landroidx/media3/exoplayer/SeekParameters;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    const-wide/16 p3, 0x1388

    iput-wide p3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekBackIncrementMs:J

    const-wide/16 p3, 0x3a98

    iput-wide p3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekForwardIncrementMs:J

    new-instance p1, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;

    invoke-direct {p1}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;-><init>()V

    invoke-virtual {p1}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;->build()Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    sget-object p1, Landroidx/media3/common/util/Clock;->DEFAULT:Landroidx/media3/common/util/Clock;

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->clock:Landroidx/media3/common/util/Clock;

    const-wide/16 p3, 0x1f4

    iput-wide p3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->releaseTimeoutMs:J

    const-wide/16 p3, 0x7d0

    iput-wide p3, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    iput-boolean p2, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->usePlatformDiagnostics:Z

    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->lambda$setRenderersFactory$16(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/content/Context;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->lambda$new$0(Landroid/content/Context;)Landroidx/media3/exoplayer/RenderersFactory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/content/Context;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->lambda$new$1(Landroid/content/Context;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/LoadControl;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->lambda$setLoadControl$19(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/LoadControl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->lambda$setMediaSourceFactory$17(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroid/content/Context;)Landroidx/media3/exoplayer/upstream/BandwidthMeter;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->lambda$new$15(Landroid/content/Context;)Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Landroid/content/Context;)Landroidx/media3/exoplayer/trackselection/TrackSelector;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayer$Builder;->lambda$new$14(Landroid/content/Context;)Landroidx/media3/exoplayer/trackselection/TrackSelector;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$0(Landroid/content/Context;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/DefaultRenderersFactory;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static synthetic lambda$new$1(Landroid/content/Context;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 2

    new-instance v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    new-instance v1, Landroidx/media3/extractor/DefaultExtractorsFactory;

    invoke-direct {v1}, Landroidx/media3/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;Landroidx/media3/extractor/ExtractorsFactory;)V

    return-object v0
.end method

.method private static synthetic lambda$new$14(Landroid/content/Context;)Landroidx/media3/exoplayer/trackselection/TrackSelector;
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static synthetic lambda$new$15(Landroid/content/Context;)Landroidx/media3/exoplayer/upstream/BandwidthMeter;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;->getSingletonInstance(Landroid/content/Context;)Landroidx/media3/exoplayer/upstream/DefaultBandwidthMeter;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setLoadControl$19(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/LoadControl;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$setMediaSourceFactory$17(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    return-object p0
.end method

.method private static synthetic lambda$setRenderersFactory$16(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/RenderersFactory;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public build()Landroidx/media3/exoplayer/ExoPlayer;
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;-><init>(Landroidx/media3/exoplayer/ExoPlayer$Builder;Landroidx/media3/common/Player;)V

    return-object v0
.end method

.method public setLoadControl(Landroidx/media3/exoplayer/LoadControl;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/media3/exoplayer/q;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroidx/media3/exoplayer/q;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->loadControlSupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method public setMediaSourceFactory(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/media3/exoplayer/q;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Landroidx/media3/exoplayer/q;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method public setRenderersFactory(Landroidx/media3/exoplayer/RenderersFactory;)Landroidx/media3/exoplayer/ExoPlayer$Builder;
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/media3/exoplayer/q;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Landroidx/media3/exoplayer/q;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->renderersFactorySupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method
