.class final Landroidx/media3/exoplayer/ExoPlayerImpl;
.super Landroidx/media3/common/BasePlayer;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/ExoPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;,
        Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;,
        Landroidx/media3/exoplayer/ExoPlayerImpl$Api31;,
        Landroidx/media3/exoplayer/ExoPlayerImpl$NoSuitableOutputPlaybackSuppressionAudioDeviceCallback;,
        Landroidx/media3/exoplayer/ExoPlayerImpl$Api23;,
        Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;
    }
.end annotation


# instance fields
.field private final analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

.field private final applicationContext:Landroid/content/Context;

.field private final applicationLooper:Landroid/os/Looper;

.field private audioAttributes:Landroidx/media3/common/AudioAttributes;

.field private final audioBecomingNoisyManager:Landroidx/media3/exoplayer/AudioBecomingNoisyManager;

.field private audioDecoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

.field private final audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

.field private audioFormat:Landroidx/media3/common/Format;

.field private audioManager:Landroid/media/AudioManager;

.field private final audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private audioSessionId:I

.field private availableCommands:Landroidx/media3/common/Player$Commands;

.field private final bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

.field private final clock:Landroidx/media3/common/util/Clock;

.field private final componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

.field private final constructorFinished:Landroidx/media3/common/util/ConditionVariable;

.field private currentCueGroup:Landroidx/media3/common/text/CueGroup;

.field private final detachSurfaceTimeoutMs:J

.field private deviceInfo:Landroidx/media3/common/DeviceInfo;

.field final emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

.field private final frameMetadataListener:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

.field private hasNotifiedFullWrongThreadWarning:Z

.field private final internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

.field private isPriorityTaskManagerRegistered:Z

.field private keepSessionIdAudioTrack:Landroid/media/AudioTrack;

.field private final listeners:Landroidx/media3/common/util/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/ListenerSet<",
            "Landroidx/media3/common/Player$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private maskingPeriodIndex:I

.field private maskingWindowIndex:I

.field private maskingWindowPositionMs:J

.field private mediaMetadata:Landroidx/media3/common/MediaMetadata;

.field private final mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

.field private final mediaSourceHolderSnapshots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private ownedSurface:Landroid/view/Surface;

.field private pauseAtEndOfMediaItems:Z

.field private pendingDiscontinuity:Z

.field private pendingDiscontinuityReason:I

.field private pendingOperationAcks:I

.field private pendingPlayWhenReadyChangeReason:I

.field private final period:Landroidx/media3/common/Timeline$Period;

.field final permanentAvailableCommands:Landroidx/media3/common/Player$Commands;

.field private playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

.field private final playbackInfoUpdateHandler:Landroidx/media3/common/util/HandlerWrapper;

.field private final playbackInfoUpdateListener:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

.field private playerReleased:Z

.field private playlistMetadata:Landroidx/media3/common/MediaMetadata;

.field private final renderers:[Landroidx/media3/exoplayer/Renderer;

.field private repeatMode:I

.field private final seekBackIncrementMs:J

.field private final seekForwardIncrementMs:J

.field private seekParameters:Landroidx/media3/exoplayer/SeekParameters;

.field private shuffleModeEnabled:Z

.field private shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

.field private skipSilenceEnabled:Z

.field private sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

.field private staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

.field private final streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

.field private final suppressPlaybackOnUnsuitableOutput:Z

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceHolderSurfaceIsVideoOutput:Z

.field private surfaceSize:Landroidx/media3/common/util/Size;

.field private textureView:Landroid/view/TextureView;

.field private throwsWhenUsingWrongThread:Z

.field private final trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

.field private final useLazyPreparation:Z

.field private videoChangeFrameRateStrategy:I

.field private videoDecoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

.field private videoFormat:Landroidx/media3/common/Format;

.field private videoOutput:Ljava/lang/Object;

.field private videoScalingMode:I

.field private videoSize:Landroidx/media3/common/VideoSize;

.field private volume:F

.field private final wakeLockManager:Landroidx/media3/exoplayer/WakeLockManager;

.field private final wifiLockManager:Landroidx/media3/exoplayer/WifiLockManager;

.field private final wrappingPlayer:Landroidx/media3/common/Player;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "media3.exoplayer"

    invoke-static {v0}, Landroidx/media3/common/MediaLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/ExoPlayer$Builder;Landroidx/media3/common/Player;)V
    .locals 39
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v8, " [AndroidXMedia3/1.3.1] ["

    const-string v9, "Init "

    invoke-direct/range {p0 .. p0}, Landroidx/media3/common/BasePlayer;-><init>()V

    new-instance v10, Landroidx/media3/common/util/ConditionVariable;

    invoke-direct {v10}, Landroidx/media3/common/util/ConditionVariable;-><init>()V

    iput-object v10, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->constructorFinished:Landroidx/media3/common/util/ConditionVariable;

    :try_start_0
    const-string v11, "ExoPlayerImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Landroidx/media3/common/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iput-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationContext:Landroid/content/Context;

    iget-object v9, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->analyticsCollectorFunction:Lcom/google/common/base/Function;

    iget-object v11, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->clock:Landroidx/media3/common/util/Clock;

    invoke-interface {v9, v11}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    iput-object v9, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    iget-object v11, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iput-object v11, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget v11, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->videoScalingMode:I

    iput v11, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoScalingMode:I

    iget v11, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->videoChangeFrameRateStrategy:I

    iput v11, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoChangeFrameRateStrategy:I

    iget-boolean v11, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->skipSilenceEnabled:Z

    iput-boolean v11, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->skipSilenceEnabled:Z

    iget-wide v11, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    iput-wide v11, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->detachSurfaceTimeoutMs:J

    new-instance v12, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    const/4 v11, 0x0

    invoke-direct {v12, v1, v11}, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/ExoPlayerImpl$1;)V

    iput-object v12, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    new-instance v15, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {v15, v11}, Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl$1;)V

    iput-object v15, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->frameMetadataListener:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    new-instance v14, Landroid/os/Handler;

    iget-object v13, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    invoke-direct {v14, v13}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v13, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->renderersFactorySupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v13}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media3/exoplayer/RenderersFactory;

    move-object/from16 v30, v14

    move-object/from16 v31, v15

    move-object v15, v12

    move-object/from16 v16, v12

    move-object/from16 v17, v12

    move-object/from16 v18, v12

    invoke-interface/range {v13 .. v18}, Landroidx/media3/exoplayer/RenderersFactory;->createRenderers(Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;Landroidx/media3/exoplayer/audio/AudioRendererEventListener;Landroidx/media3/exoplayer/text/TextOutput;Landroidx/media3/exoplayer/metadata/MetadataOutput;)[Landroidx/media3/exoplayer/Renderer;

    move-result-object v13

    iput-object v13, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v14, v13

    const/4 v15, 0x0

    if-lez v14, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    invoke-static {v14}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v14, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->trackSelectorSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v14}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/media3/exoplayer/trackselection/TrackSelector;

    iput-object v14, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    iput-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    iget-object v5, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->bandwidthMeterSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    iput-object v5, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    iget-boolean v6, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->useLazyPreparation:Z

    iput-boolean v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->useLazyPreparation:Z

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    iput-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    move-object/from16 v32, v8

    iget-wide v7, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekBackIncrementMs:J

    iput-wide v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekBackIncrementMs:J

    iget-wide v7, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->seekForwardIncrementMs:J

    iput-wide v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekForwardIncrementMs:J

    iget-boolean v7, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->pauseAtEndOfMediaItems:Z

    iput-boolean v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->pauseAtEndOfMediaItems:Z

    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    iput-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    iget-object v8, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->clock:Landroidx/media3/common/util/Clock;

    iput-object v8, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->clock:Landroidx/media3/common/util/Clock;

    if-nez p2, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object/from16 v6, p2

    :goto_1
    iput-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->wrappingPlayer:Landroidx/media3/common/Player;

    iget-boolean v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->suppressPlaybackOnUnsuitableOutput:Z

    iput-boolean v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->suppressPlaybackOnUnsuitableOutput:Z

    new-instance v4, Landroidx/media3/common/util/ListenerSet;

    new-instance v3, Landroidx/media3/exoplayer/k;

    invoke-direct {v3, v1}, Landroidx/media3/exoplayer/k;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    invoke-direct {v4, v7, v8, v3}, Landroidx/media3/common/util/ListenerSet;-><init>(Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)V

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    new-instance v3, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;

    invoke-direct {v3, v15}, Landroidx/media3/exoplayer/source/ShuffleOrder$DefaultShuffleOrder;-><init>(I)V

    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    new-instance v3, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    array-length v4, v13

    new-array v4, v4, [Landroidx/media3/exoplayer/RendererConfiguration;

    array-length v15, v13

    new-array v15, v15, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    move-object/from16 v19, v12

    sget-object v12, Landroidx/media3/common/Tracks;->EMPTY:Landroidx/media3/common/Tracks;

    invoke-direct {v3, v4, v15, v12, v11}, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;-><init>([Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;Landroidx/media3/common/Tracks;Ljava/lang/Object;)V

    iput-object v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    new-instance v4, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v4}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    new-instance v4, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    const/16 v12, 0x14

    new-array v12, v12, [I

    fill-array-data v12, :array_0

    invoke-virtual {v4, v12}, Landroidx/media3/common/Player$Commands$Builder;->addAll([I)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v4

    invoke-virtual {v14}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->isSetParametersSupported()Z

    move-result v12

    const/16 v15, 0x1d

    invoke-virtual {v4, v15, v12}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v4

    iget-boolean v12, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    const/16 v15, 0x17

    invoke-virtual {v4, v15, v12}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v4

    iget-boolean v12, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    const/16 v15, 0x19

    invoke-virtual {v4, v15, v12}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v4

    iget-boolean v12, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    const/16 v15, 0x21

    invoke-virtual {v4, v15, v12}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v4

    iget-boolean v12, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    const/16 v15, 0x1a

    invoke-virtual {v4, v15, v12}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v4

    iget-boolean v12, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    const/16 v15, 0x22

    invoke-virtual {v4, v15, v12}, Landroidx/media3/common/Player$Commands$Builder;->addIf(IZ)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/common/Player$Commands$Builder;->build()Landroidx/media3/common/Player$Commands;

    move-result-object v4

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->permanentAvailableCommands:Landroidx/media3/common/Player$Commands;

    new-instance v12, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v12}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    invoke-virtual {v12, v4}, Landroidx/media3/common/Player$Commands$Builder;->addAll(Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v4

    const/4 v15, 0x4

    invoke-virtual {v4, v15}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v4

    const/16 v12, 0xa

    invoke-virtual {v4, v12}, Landroidx/media3/common/Player$Commands$Builder;->add(I)Landroidx/media3/common/Player$Commands$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/common/Player$Commands$Builder;->build()Landroidx/media3/common/Player$Commands;

    move-result-object v4

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->availableCommands:Landroidx/media3/common/Player$Commands;

    invoke-interface {v8, v7, v11}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v4

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v4, Landroidx/media3/exoplayer/k;

    invoke-direct {v4, v1}, Landroidx/media3/exoplayer/k;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateListener:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    invoke-static {v3}, Landroidx/media3/exoplayer/PlaybackInfo;->createDummy(Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v11

    iput-object v11, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-interface {v9, v6, v7}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->setPlayer(Landroidx/media3/common/Player;Landroid/os/Looper;)V

    sget v6, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v11, 0x1f

    if-ge v6, v11, :cond_2

    new-instance v11, Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-direct {v11}, Landroidx/media3/exoplayer/analytics/PlayerId;-><init>()V

    move-object/from16 v33, v10

    move-object/from16 v28, v11

    move-object/from16 v10, v32

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_2
    iget-boolean v11, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->usePlatformDiagnostics:Z

    move-object/from16 v33, v10

    move-object/from16 v10, v32

    invoke-static {v10, v1, v11}, Landroidx/media3/exoplayer/ExoPlayerImpl$Api31;->registerMediaMetricsListener(Landroid/content/Context;Landroidx/media3/exoplayer/ExoPlayerImpl;Z)Landroidx/media3/exoplayer/analytics/PlayerId;

    move-result-object v11

    move-object/from16 v28, v11

    :goto_2
    new-instance v11, Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v12, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->loadControlSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v12}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v20, v12

    check-cast v20, Landroidx/media3/exoplayer/LoadControl;

    iget v12, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    move/from16 v32, v2

    iget-boolean v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    move-object/from16 v34, v10

    iget-object v10, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->seekParameters:Landroidx/media3/exoplayer/SeekParameters;

    move/from16 v35, v6

    iget-object v6, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->livePlaybackSpeedControl:Landroidx/media3/exoplayer/LivePlaybackSpeedControl;

    move-object/from16 v36, v7

    move-object/from16 v26, v8

    iget-wide v7, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->releaseTimeoutMs:J

    move-object/from16 v27, v4

    iget-boolean v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->pauseAtEndOfMediaItems:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->playbackLooper:Landroid/os/Looper;

    move-object/from16 v37, v11

    move-object/from16 v11, v37

    move/from16 v17, v12

    move-object/from16 v0, v19

    move-object v12, v13

    move-object v13, v14

    move-object/from16 v38, v14

    move-object v14, v3

    const/4 v3, 0x0

    move-object/from16 v15, v20

    move-object/from16 v16, v5

    move/from16 v18, v2

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v6

    move-wide/from16 v22, v7

    move/from16 v24, v4

    move-object/from16 v25, v36

    move-object/from16 v29, v1

    invoke-direct/range {v11 .. v29}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;-><init>([Landroidx/media3/exoplayer/Renderer;Landroidx/media3/exoplayer/trackselection/TrackSelector;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Landroidx/media3/exoplayer/LoadControl;Landroidx/media3/exoplayer/upstream/BandwidthMeter;IZLandroidx/media3/exoplayer/analytics/AnalyticsCollector;Landroidx/media3/exoplayer/SeekParameters;Landroidx/media3/exoplayer/LivePlaybackSpeedControl;JZLandroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;Landroidx/media3/exoplayer/analytics/PlayerId;Landroid/os/Looper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, p0

    move-object/from16 v2, v37

    :try_start_2
    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->volume:F

    iput v3, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    sget-object v4, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->playlistMetadata:Landroidx/media3/common/MediaMetadata;

    iput-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    const/4 v4, -0x1

    iput v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowIndex:I

    move/from16 v4, v35

    const/16 v6, 0x15

    if-ge v4, v6, :cond_3

    invoke-direct {v1, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->initializeKeepSessionIdAudioTrack(I)I

    move-result v6

    :goto_3
    iput v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioSessionId:I

    goto :goto_4

    :cond_3
    invoke-static/range {v34 .. v34}, Landroidx/media3/common/util/Util;->generateAudioSessionIdV21(Landroid/content/Context;)I

    move-result v6

    goto :goto_3

    :goto_4
    sget-object v6, Landroidx/media3/common/text/CueGroup;->EMPTY_TIME_ZERO:Landroidx/media3/common/text/CueGroup;

    iput-object v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->currentCueGroup:Landroidx/media3/common/text/CueGroup;

    const/4 v6, 0x1

    iput-boolean v6, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->throwsWhenUsingWrongThread:Z

    invoke-virtual {v1, v9}, Landroidx/media3/exoplayer/ExoPlayerImpl;->addListener(Landroidx/media3/common/Player$Listener;)V

    new-instance v7, Landroid/os/Handler;

    move-object/from16 v8, v36

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-interface {v5, v7, v9}, Landroidx/media3/exoplayer/upstream/BandwidthMeter;->addEventListener(Landroid/os/Handler;Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->addAudioOffloadListener(Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;)V

    move-object v5, v0

    move-object/from16 v0, p1

    iget-wide v9, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->foregroundModeTimeoutMs:J

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-lez v7, :cond_4

    invoke-virtual {v2, v9, v10}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->experimentalSetForegroundModeTimeoutMs(J)V

    :cond_4
    new-instance v2, Landroidx/media3/exoplayer/AudioBecomingNoisyManager;

    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    move-object/from16 v9, v30

    invoke-direct {v2, v7, v9, v5}, Landroidx/media3/exoplayer/AudioBecomingNoisyManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroidx/media3/exoplayer/AudioBecomingNoisyManager$EventListener;)V

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioBecomingNoisyManager:Landroidx/media3/exoplayer/AudioBecomingNoisyManager;

    iget-boolean v7, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->handleAudioBecomingNoisy:Z

    invoke-virtual {v2, v7}, Landroidx/media3/exoplayer/AudioBecomingNoisyManager;->setEnabled(Z)V

    new-instance v2, Landroidx/media3/exoplayer/AudioFocusManager;

    iget-object v7, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    invoke-direct {v2, v7, v9, v5}, Landroidx/media3/exoplayer/AudioFocusManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroidx/media3/exoplayer/AudioFocusManager$PlayerControl;)V

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    iget-boolean v7, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->handleAudioFocus:Z

    if-eqz v7, :cond_5

    iget-object v11, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    goto :goto_5

    :cond_5
    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v2, v11}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;)V

    if-eqz v32, :cond_6

    const/16 v2, 0x17

    if-lt v4, v2, :cond_6

    const-string v2, "audio"

    move-object/from16 v4, v34

    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioManager:Landroid/media/AudioManager;

    new-instance v4, Landroidx/media3/exoplayer/ExoPlayerImpl$NoSuitableOutputPlaybackSuppressionAudioDeviceCallback;

    const/4 v7, 0x0

    invoke-direct {v4, v1, v7}, Landroidx/media3/exoplayer/ExoPlayerImpl$NoSuitableOutputPlaybackSuppressionAudioDeviceCallback;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/ExoPlayerImpl$1;)V

    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v2, v4, v10}, Landroidx/media3/exoplayer/ExoPlayerImpl$Api23;->registerAudioDeviceCallback(Landroid/media/AudioManager;Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    goto :goto_6

    :cond_6
    const/4 v7, 0x0

    :goto_6
    iget-boolean v2, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->deviceVolumeControlEnabled:Z

    if-eqz v2, :cond_7

    new-instance v2, Landroidx/media3/exoplayer/StreamVolumeManager;

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    invoke-direct {v2, v4, v9, v5}, Landroidx/media3/exoplayer/StreamVolumeManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroidx/media3/exoplayer/StreamVolumeManager$Listener;)V

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    iget-object v4, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    iget v4, v4, Landroidx/media3/common/AudioAttributes;->usage:I

    invoke-static {v4}, Landroidx/media3/common/util/Util;->getStreamTypeForAudioUsage(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/media3/exoplayer/StreamVolumeManager;->setStreamType(I)V

    goto :goto_7

    :cond_7
    iput-object v7, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    :goto_7
    new-instance v2, Landroidx/media3/exoplayer/WakeLockManager;

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroidx/media3/exoplayer/WakeLockManager;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->wakeLockManager:Landroidx/media3/exoplayer/WakeLockManager;

    iget v4, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->wakeMode:I

    if-eqz v4, :cond_8

    const/4 v15, 0x1

    goto :goto_8

    :cond_8
    const/4 v15, 0x0

    :goto_8
    invoke-virtual {v2, v15}, Landroidx/media3/exoplayer/WakeLockManager;->setEnabled(Z)V

    new-instance v2, Landroidx/media3/exoplayer/WifiLockManager;

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroidx/media3/exoplayer/WifiLockManager;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->wifiLockManager:Landroidx/media3/exoplayer/WifiLockManager;

    iget v0, v0, Landroidx/media3/exoplayer/ExoPlayer$Builder;->wakeMode:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_9

    const/4 v15, 0x1

    goto :goto_9

    :cond_9
    const/4 v15, 0x0

    :goto_9
    invoke-virtual {v2, v15}, Landroidx/media3/exoplayer/WifiLockManager;->setEnabled(Z)V

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    invoke-static {v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createDeviceInfo(Landroidx/media3/exoplayer/StreamVolumeManager;)Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    sget-object v0, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoSize:Landroidx/media3/common/VideoSize;

    sget-object v0, Landroidx/media3/common/util/Size;->UNKNOWN:Landroidx/media3/common/util/Size;

    iput-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceSize:Landroidx/media3/common/util/Size;

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    move-object/from16 v14, v38

    invoke-virtual {v14, v0}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;)V

    iget v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioSessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    iget v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioSessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x2

    invoke-direct {v1, v4, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    iget-object v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    const/4 v2, 0x3

    invoke-direct {v1, v3, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    iget v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoScalingMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    invoke-direct {v1, v4, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    iget v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoChangeFrameRateStrategy:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x5

    invoke-direct {v1, v4, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    iget-boolean v0, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->skipSilenceEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v2, 0x9

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    const/4 v0, 0x7

    move-object/from16 v2, v31

    invoke-direct {v1, v4, v0, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    const/4 v0, 0x6

    const/16 v3, 0x8

    invoke-direct {v1, v0, v3, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual/range {v33 .. v33}, Landroidx/media3/common/util/ConditionVariable;->open()Z

    return-void

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    :goto_a
    iget-object v2, v1, Landroidx/media3/exoplayer/ExoPlayerImpl;->constructorFinished:Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {v2}, Landroidx/media3/common/util/ConditionVariable;->open()Z

    throw v0

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x1f
        0x14
        0x1e
        0x15
        0x23
        0x16
        0x18
        0x1b
        0x1c
        0x20
    .end array-data
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->lambda$updatePlaybackInfo$21(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic access$1002(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/DecoderCounters;)Landroidx/media3/exoplayer/DecoderCounters;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioDecoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    return-object p1
.end method

.method public static synthetic access$1102(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/Format;)Landroidx/media3/common/Format;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFormat:Landroidx/media3/common/Format;

    return-object p1
.end method

.method public static synthetic access$1200(Landroidx/media3/exoplayer/ExoPlayerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->skipSilenceEnabled:Z

    return p0
.end method

.method public static synthetic access$1202(Landroidx/media3/exoplayer/ExoPlayerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->skipSilenceEnabled:Z

    return p1
.end method

.method public static synthetic access$1302(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/text/CueGroup;)Landroidx/media3/common/text/CueGroup;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->currentCueGroup:Landroidx/media3/common/text/CueGroup;

    return-object p1
.end method

.method public static synthetic access$1400(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/MediaMetadata;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    return-object p0
.end method

.method public static synthetic access$1402(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaMetadata;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    return-object p1
.end method

.method public static synthetic access$1500(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/MediaMetadata;
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->buildUpdatedMediaMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1600(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/MediaMetadata;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    return-object p0
.end method

.method public static synthetic access$1602(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaMetadata;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    return-object p1
.end method

.method public static synthetic access$1700(Landroidx/media3/exoplayer/ExoPlayerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolderSurfaceIsVideoOutput:Z

    return p0
.end method

.method public static synthetic access$1800(Landroidx/media3/exoplayer/ExoPlayerImpl;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic access$1900(Landroidx/media3/exoplayer/ExoPlayerImpl;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method public static synthetic access$2000(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setSurfaceTextureInternal(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public static synthetic access$2100(Landroidx/media3/exoplayer/ExoPlayerImpl;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendVolumeToRenderers()V

    return-void
.end method

.method public static synthetic access$2200(ZI)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReadyChangeReason(ZI)I

    move-result p0

    return p0
.end method

.method public static synthetic access$2300(Landroidx/media3/exoplayer/ExoPlayerImpl;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlayWhenReady(ZII)V

    return-void
.end method

.method public static synthetic access$2400(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/exoplayer/StreamVolumeManager;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    return-object p0
.end method

.method public static synthetic access$2500(Landroidx/media3/exoplayer/StreamVolumeManager;)Landroidx/media3/common/DeviceInfo;
    .locals 0

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createDeviceInfo(Landroidx/media3/exoplayer/StreamVolumeManager;)Landroidx/media3/common/DeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$2600(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/DeviceInfo;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    return-object p0
.end method

.method public static synthetic access$2602(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/DeviceInfo;)Landroidx/media3/common/DeviceInfo;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->deviceInfo:Landroidx/media3/common/DeviceInfo;

    return-object p1
.end method

.method public static synthetic access$2700(Landroidx/media3/exoplayer/ExoPlayerImpl;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updateWakeAndWifiLock()V

    return-void
.end method

.method public static synthetic access$2800(Landroidx/media3/exoplayer/ExoPlayerImpl;)Z
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->hasSupportedAudioOutput()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$2900(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/exoplayer/PlaybackInfo;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    return-object p0
.end method

.method public static synthetic access$3000(Landroidx/media3/exoplayer/ExoPlayerImpl;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfoForPlayWhenReadyAndSuppressionReasonStates(ZII)V

    return-void
.end method

.method public static synthetic access$402(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/DecoderCounters;)Landroidx/media3/exoplayer/DecoderCounters;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoDecoderCounters:Landroidx/media3/exoplayer/DecoderCounters;

    return-object p1
.end method

.method public static synthetic access$500(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/exoplayer/analytics/AnalyticsCollector;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    return-object p0
.end method

.method public static synthetic access$602(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/Format;)Landroidx/media3/common/Format;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoFormat:Landroidx/media3/common/Format;

    return-object p1
.end method

.method public static synthetic access$702(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/VideoSize;)Landroidx/media3/common/VideoSize;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoSize:Landroidx/media3/common/VideoSize;

    return-object p1
.end method

.method public static synthetic access$800(Landroidx/media3/exoplayer/ExoPlayerImpl;)Landroidx/media3/common/util/ListenerSet;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    return-object p0
.end method

.method public static synthetic access$900(Landroidx/media3/exoplayer/ExoPlayerImpl;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    return-object p0
.end method

.method private addMediaSourceHolders(ILjava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/source/MediaSource;

    iget-boolean v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->useLazyPreparation:Z

    invoke-direct {v2, v3, v4}, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;-><init>(Landroidx/media3/exoplayer/source/MediaSource;Z)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    add-int v4, v1, p1

    new-instance v5, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;

    iget-object v6, v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    iget-object v2, v2, Landroidx/media3/exoplayer/MediaSourceList$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    invoke-direct {v5, v6, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;-><init>(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MaskingMediaSource;)V

    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {p2, p1, v1}, Landroidx/media3/exoplayer/source/ShuffleOrder;->cloneAndInsert(II)Landroidx/media3/exoplayer/source/ShuffleOrder;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    return-object v0
.end method

.method public static synthetic b(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->lambda$updateAvailableCommands$26(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private buildUpdatedMediaMetadata()Landroidx/media3/common/MediaMetadata;
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v1}, Landroidx/media3/common/MediaMetadata;->buildUpon()Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v1

    iget-object v0, v0, Landroidx/media3/common/MediaItem;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v1, v0}, Landroidx/media3/common/MediaMetadata$Builder;->populate(Landroidx/media3/common/MediaMetadata;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/MediaMetadata$Builder;->build()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->lambda$updatePlaybackInfo$25(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private computePlaybackSuppressionReason(ZI)I
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    return v0

    :cond_0
    iget-boolean p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->suppressPlaybackOnUnsuitableOutput:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x3

    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->hasSupportedAudioOutput()Z

    move-result v0

    if-nez v0, :cond_1

    return p2

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    if-ne p1, p2, :cond_2

    return p2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private static createDeviceInfo(Landroidx/media3/exoplayer/StreamVolumeManager;)Landroidx/media3/common/DeviceInfo;
    .locals 3

    new-instance v0, Landroidx/media3/common/DeviceInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/common/DeviceInfo$Builder;-><init>(I)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/StreamVolumeManager;->getMinVolume()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/media3/common/DeviceInfo$Builder;->setMinVolume(I)Landroidx/media3/common/DeviceInfo$Builder;

    move-result-object v0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/StreamVolumeManager;->getMaxVolume()I

    move-result v1

    :cond_1
    invoke-virtual {v0, v1}, Landroidx/media3/common/DeviceInfo$Builder;->setMaxVolume(I)Landroidx/media3/common/DeviceInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/DeviceInfo$Builder;->build()Landroidx/media3/common/DeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method private createMaskingTimeline()Landroidx/media3/common/Timeline;
    .locals 3

    new-instance v0, Landroidx/media3/exoplayer/PlaylistTimeline;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-direct {v0, v1, v2}, Landroidx/media3/exoplayer/PlaylistTimeline;-><init>(Ljava/util/Collection;Landroidx/media3/exoplayer/source/ShuffleOrder;)V

    return-object v0
.end method

.method private createMediaSources(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/MediaItem;

    invoke-interface {v2, v3}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private createMessageInternal(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;
    .locals 9

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentWindowIndexInternal(Landroidx/media3/exoplayer/PlaybackInfo;)I

    move-result v0

    new-instance v8, Landroidx/media3/exoplayer/PlayerMessage;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, v0

    :goto_0
    iget-object v6, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->clock:Landroidx/media3/common/util/Clock;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v1, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/PlayerMessage;-><init>(Landroidx/media3/exoplayer/PlayerMessage$Sender;Landroidx/media3/exoplayer/PlayerMessage$Target;Landroidx/media3/common/Timeline;ILandroidx/media3/common/util/Clock;Landroid/os/Looper;)V

    return-object v8
.end method

.method public static synthetic d(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->lambda$updatePlaybackInfo$23(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic e(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->lambda$updatePlaybackInfo$13(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private evaluateMediaItemTransitionReason(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/exoplayer/PlaybackInfo;ZIZZ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/PlaybackInfo;",
            "Landroidx/media3/exoplayer/PlaybackInfo;",
            "ZIZZ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p2, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v4

    const/4 v5, 0x3

    if-eq v2, v4, :cond_1

    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_1
    iget-object v2, p2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v0, v2, v4}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v4, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v2, v4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    iget-object v2, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v2, v4}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v4, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v1, v2, v4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_5

    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    if-ne p4, v2, :cond_3

    const/4 v5, 0x2

    goto :goto_0

    :cond_3
    if-eqz p5, :cond_4

    :goto_0
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_5
    if-eqz p3, :cond_6

    if-nez p4, :cond_6

    iget-object p2, p2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v4, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide p1, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long p5, v4, p1

    if-gez p5, :cond_6

    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_6
    if-eqz p3, :cond_7

    if-ne p4, v2, :cond_7

    if-eqz p6, :cond_7

    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_7
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static synthetic f(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/common/Player$Listener;Landroidx/media3/common/FlagSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->lambda$new$0(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/FlagSet;)V

    return-void
.end method

.method public static synthetic g(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->lambda$updatePlaybackInfo$16(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private getContentPositionInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J
    .locals 5

    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-wide v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentWindowIndexInternal(Landroidx/media3/exoplayer/PlaybackInfo;)I

    move-result p1

    iget-object v1, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v0

    iget-wide v2, p1, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPositionUsInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getCurrentPositionUsInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J
    .locals 3

    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowPositionMs:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-boolean v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/media3/exoplayer/PlaybackInfo;->getEstimatedPositionUs()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    iget-wide v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    :goto_0
    iget-object v2, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_2

    return-wide v0

    :cond_2
    iget-object v2, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, v2, p1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->periodPositionUsToWindowPositionUs(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getCurrentWindowIndexInternal(Landroidx/media3/exoplayer/PlaybackInfo;)I
    .locals 2

    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowIndex:I

    return p1

    :cond_0
    iget-object v0, p1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object p1, p1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p1

    iget p1, p1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    return p1
.end method

.method private static getPlayWhenReadyChangeReason(ZI)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method private getPositionInfo(J)Landroidx/media3/common/Player$PositionInfo;
    .locals 13

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v2

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v0, v1, v3}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0, v1}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v3, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v4, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v3, v2, v4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v3

    iget-object v3, v3, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v4, v4, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    move v5, v0

    move-object v12, v4

    move-object v4, v1

    move-object v1, v3

    move-object v3, v12

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    move-object v1, v0

    move-object v3, v1

    move-object v4, v3

    const/4 v5, -0x1

    :goto_0
    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v6

    new-instance p1, Landroidx/media3/common/Player$PositionInfo;

    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object p2, p2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-static {p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getRequestedContentPositionUs(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v8

    goto :goto_1

    :cond_1
    move-wide v8, v6

    :goto_1
    iget-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object p2, p2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v10, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v11, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    move-object v0, p1

    invoke-direct/range {v0 .. v11}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    return-object p1
.end method

.method private getPreviousPositionInfo(ILandroidx/media3/exoplayer/PlaybackInfo;I)Landroidx/media3/common/Player$PositionInfo;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v2}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iget-object v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_0

    iget-object v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v5, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v5, v3, v2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget v5, v2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v6, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v6, v3}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v6

    iget-object v7, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v8, v0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v7, v5, v8}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v7

    iget-object v7, v7, Landroidx/media3/common/Timeline$Window;->uid:Ljava/lang/Object;

    iget-object v8, v0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v8, v8, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    move-object v9, v3

    move v10, v6

    move-object v6, v7

    move v7, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move/from16 v7, p3

    move-object v6, v3

    move-object v8, v6

    move-object v9, v8

    const/4 v10, -0x1

    :goto_0
    iget-object v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v3

    if-nez p1, :cond_3

    if-eqz v3, :cond_1

    iget-object v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v4, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v2, v4, v3}, Landroidx/media3/common/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v2

    :goto_1
    invoke-static/range {p2 .. p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getRequestedContentPositionUs(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v4

    goto :goto_3

    :cond_1
    iget-object v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-eq v3, v4, :cond_2

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-static {v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getRequestedContentPositionUs(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v2

    :goto_2
    move-wide v4, v2

    goto :goto_3

    :cond_2
    iget-wide v3, v2, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    iget-wide v11, v2, Landroidx/media3/common/Timeline$Period;->durationUs:J

    add-long v2, v3, v11

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    iget-wide v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    goto :goto_1

    :cond_4
    iget-wide v2, v2, Landroidx/media3/common/Timeline$Period;->positionInWindowUs:J

    iget-wide v4, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    add-long/2addr v2, v4

    goto :goto_2

    :goto_3
    new-instance v17, Landroidx/media3/common/Player$PositionInfo;

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v11

    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v13

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v15, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    move-object/from16 v5, v17

    move/from16 v16, v1

    invoke-direct/range {v5 .. v16}, Landroidx/media3/common/Player$PositionInfo;-><init>(Ljava/lang/Object;ILandroidx/media3/common/MediaItem;Ljava/lang/Object;IJJII)V

    return-object v17
.end method

.method private static getRequestedContentPositionUs(Landroidx/media3/exoplayer/PlaybackInfo;)J
    .locals 7

    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    new-instance v1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iget-object v2, p0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v3, p0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-wide v2, p0, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget v1, v1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    invoke-virtual {p0, v1, v0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/PlaybackInfo;->requestedContentPositionUs:J

    add-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public static synthetic h(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->lambda$updatePlaybackInfo$15(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private handlePlaybackInfo(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 12

    iget v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    iget v2, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->operationAcks:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    iget-boolean v2, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget v2, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->discontinuityReason:I

    iput v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingDiscontinuityReason:I

    iput-boolean v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingDiscontinuity:Z

    :cond_0
    iget-boolean v2, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPlayWhenReadyChangeReason:Z

    if-eqz v2, :cond_1

    iget v2, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playWhenReadyChangeReason:I

    iput v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingPlayWhenReadyChangeReason:I

    :cond_1
    if-nez v1, :cond_b

    iget-object v1, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    iput v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowIndex:I

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowPositionMs:J

    iput v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingPeriodIndex:I

    :cond_2
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    move-object v2, v1

    check-cast v2, Landroidx/media3/exoplayer/PlaylistTimeline;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/PlaylistTimeline;->getChildTimelines()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    iget-object v6, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/Timeline;

    invoke-virtual {v6, v7}, Landroidx/media3/exoplayer/ExoPlayerImpl$MediaSourceHolderSnapshot;->updateTimeline(Landroidx/media3/common/Timeline;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingDiscontinuity:Z

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_a

    iget-object v2, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v7, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v7, v7, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2, v7}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v7, v2, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v10, v2, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    cmp-long v2, v7, v10

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :cond_6
    :goto_2
    if-eqz v3, :cond_9

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    iget-object v2, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v5, v2, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v6, v2, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    invoke-direct {p0, v1, v5, v6, v7}, Landroidx/media3/exoplayer/ExoPlayerImpl;->periodPositionUsToWindowPositionUs(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v1

    goto :goto_4

    :cond_8
    :goto_3
    iget-object v1, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v1, v1, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    :goto_4
    move-wide v6, v1

    :goto_5
    move v5, v3

    goto :goto_6

    :cond_9
    move-wide v6, v5

    goto :goto_5

    :cond_a
    move-wide v6, v5

    const/4 v5, 0x0

    :goto_6
    iput-boolean v4, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingDiscontinuity:Z

    iget-object v1, p1, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingPlayWhenReadyChangeReason:I

    iget v8, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingDiscontinuityReason:I

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move v4, v5

    move v5, v8

    move v8, v9

    move v9, v10

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IIZIJIZ)V

    :cond_b
    return-void
.end method

.method private hasSupportedAudioOutput()Z
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, LA/a;->x(Landroid/media/AudioManager;)[Landroid/media/AudioDeviceInfo;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl$Api23;->isSuitableAudioOutputPresentInAudioDeviceInfoList(Landroid/content/Context;[Landroid/media/AudioDeviceInfo;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic i(FLandroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->lambda$setVolume$10(FLandroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private initializeKeepSessionIdAudioTrack(I)I
    .locals 9

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    new-instance v0, Landroid/media/AudioTrack;

    const/4 v2, 0x3

    const/4 v7, 0x0

    const/16 v3, 0xfa0

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x2

    move-object v1, v0

    move v8, p1

    invoke-direct/range {v1 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result p1

    return p1
.end method

.method public static synthetic j(IILandroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->lambda$maybeNotifySurfaceSizeChanged$27(IILandroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic k(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->lambda$updatePlaybackInfo$19(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic l(Landroidx/media3/exoplayer/PlaybackInfo;ILandroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->lambda$updatePlaybackInfo$22(Landroidx/media3/exoplayer/PlaybackInfo;ILandroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private static synthetic lambda$maybeNotifySurfaceSizeChanged$27(IILandroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Landroidx/media3/common/Player$Listener;->onSurfaceSizeChanged(II)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroidx/media3/common/Player$Listener;Landroidx/media3/common/FlagSet;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wrappingPlayer:Landroidx/media3/common/Player;

    new-instance v1, Landroidx/media3/common/Player$Events;

    invoke-direct {v1, p2}, Landroidx/media3/common/Player$Events;-><init>(Landroidx/media3/common/FlagSet;)V

    invoke-interface {p1, v0, v1}, Landroidx/media3/common/Player$Listener;->onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->handlePlaybackInfo(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateHandler:Landroidx/media3/common/util/HandlerWrapper;

    new-instance v1, Landroidx/media3/exoplayer/l;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Landroidx/media3/exoplayer/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic lambda$release$5(Landroidx/media3/common/Player$Listener;)V
    .locals 2

    new-instance v0, Landroidx/media3/exoplayer/ExoTimeoutException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/ExoTimeoutException;-><init>(I)V

    const/16 v1, 0x3eb

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    invoke-interface {p0, v0}, Landroidx/media3/common/Player$Listener;->onPlayerError(Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method private static synthetic lambda$setTrackSelectionParameters$6(Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method private static synthetic lambda$setVolume$10(FLandroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onVolumeChanged(F)V

    return-void
.end method

.method private synthetic lambda$updateAvailableCommands$26(Landroidx/media3/common/Player$Listener;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->availableCommands:Landroidx/media3/common/Player$Commands;

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method private static synthetic lambda$updatePlaybackInfo$12(Landroidx/media3/exoplayer/PlaybackInfo;ILandroidx/media3/common/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-interface {p2, p0, p1}, Landroidx/media3/common/Player$Listener;->onTimelineChanged(Landroidx/media3/common/Timeline;I)V

    return-void
.end method

.method private static synthetic lambda$updatePlaybackInfo$13(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-interface {p3, p0}, Landroidx/media3/common/Player$Listener;->onPositionDiscontinuity(I)V

    invoke-interface {p3, p1, p2, p0}, Landroidx/media3/common/Player$Listener;->onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V

    return-void
.end method

.method private static synthetic lambda$updatePlaybackInfo$14(Landroidx/media3/common/MediaItem;ILandroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Landroidx/media3/common/Player$Listener;->onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V

    return-void
.end method

.method private static synthetic lambda$updatePlaybackInfo$15(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method private static synthetic lambda$updatePlaybackInfo$16(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlayerError(Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method private static synthetic lambda$updatePlaybackInfo$17(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->tracks:Landroidx/media3/common/Tracks;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onTracksChanged(Landroidx/media3/common/Tracks;)V

    return-void
.end method

.method private static synthetic lambda$updatePlaybackInfo$18(Landroidx/media3/common/MediaMetadata;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method private static synthetic lambda$updatePlaybackInfo$19(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->onLoadingChanged(Z)V

    iget-boolean p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onIsLoadingChanged(Z)V

    return-void
.end method

.method private static synthetic lambda$updatePlaybackInfo$20(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    iget p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    invoke-interface {p1, v0, p0}, Landroidx/media3/common/Player$Listener;->onPlayerStateChanged(ZI)V

    return-void
.end method

.method private static synthetic lambda$updatePlaybackInfo$21(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlaybackStateChanged(I)V

    return-void
.end method

.method private static synthetic lambda$updatePlaybackInfo$22(Landroidx/media3/exoplayer/PlaybackInfo;ILandroidx/media3/common/Player$Listener;)V
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    invoke-interface {p2, p0, p1}, Landroidx/media3/common/Player$Listener;->onPlayWhenReadyChanged(ZI)V

    return-void
.end method

.method private static synthetic lambda$updatePlaybackInfo$23(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlaybackSuppressionReasonChanged(I)V

    return-void
.end method

.method private static synthetic lambda$updatePlaybackInfo$24(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/PlaybackInfo;->isPlaying()Z

    move-result p0

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onIsPlayingChanged(Z)V

    return-void
.end method

.method private static synthetic lambda$updatePlaybackInfo$25(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public static synthetic m(Landroidx/media3/common/MediaItem;ILandroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->lambda$updatePlaybackInfo$14(Landroidx/media3/common/MediaItem;ILandroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private maskTimelineAndPosition(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Landroid/util/Pair;)Landroidx/media3/exoplayer/PlaybackInfo;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/PlaybackInfo;",
            "Landroidx/media3/common/Timeline;",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;)",
            "Landroidx/media3/exoplayer/PlaybackInfo;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    move-object/from16 v3, p1

    iget-object v5, v3, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-direct/range {p0 .. p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getContentPositionInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v6

    invoke-virtual/range {p1 .. p2}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithTimeline(Landroidx/media3/common/Timeline;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroidx/media3/exoplayer/PlaybackInfo;->getDummyPeriodForEmptyTimeline()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v1

    iget-wide v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowPositionMs:J

    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v14

    sget-object v18, Landroidx/media3/exoplayer/source/TrackGroupArray;->EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v20

    const-wide/16 v16, 0x0

    move-object v9, v1

    move-wide v10, v14

    move-wide v12, v14

    move-object/from16 v19, v2

    invoke-virtual/range {v8 .. v20}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithNewPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithLoadingMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iget-wide v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    iput-wide v2, v1, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    return-object v1

    :cond_2
    iget-object v3, v8, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v9, v4

    if-eqz v9, :cond_3

    new-instance v10, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v11, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v10, v11}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    :goto_2
    move-object v14, v10

    goto :goto_3

    :cond_3
    iget-object v10, v8, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    goto :goto_2

    :goto_3
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v6, v7}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v6

    invoke-virtual {v5}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v5, v3, v2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v2

    sub-long/2addr v6, v2

    :cond_4
    if-nez v9, :cond_5

    cmp-long v2, v12, v6

    if-gez v2, :cond_6

    :cond_5
    move-wide v6, v12

    move-object v0, v14

    goto/16 :goto_7

    :cond_6
    if-nez v2, :cond_a

    iget-object v2, v8, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v3, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v3, v4}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v3

    iget v3, v3, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    if-eq v2, v3, :cond_9

    :cond_7
    iget-object v2, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v14}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    iget v2, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v3, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v1, v2, v3}, Landroidx/media3/common/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v1

    goto :goto_4

    :cond_8
    iget-object v1, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    iget-wide v1, v1, Landroidx/media3/common/Timeline$Period;->durationUs:J

    :goto_4
    iget-wide v10, v8, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    iget-wide v12, v8, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    iget-wide v3, v8, Landroidx/media3/exoplayer/PlaybackInfo;->discontinuityStartPositionUs:J

    iget-wide v5, v8, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    sub-long v16, v1, v5

    iget-object v5, v8, Landroidx/media3/exoplayer/PlaybackInfo;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v6, v8, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v7, v8, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    move-object v9, v14

    move-object v0, v14

    move-wide v14, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    invoke-virtual/range {v8 .. v20}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithNewPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithLoadingMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v8

    goto :goto_6

    :cond_9
    :goto_5
    move-object/from16 v0, p0

    goto/16 :goto_e

    :cond_a
    move-object v0, v14

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-wide v1, v8, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    sub-long v3, v12, v6

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    iget-wide v1, v8, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    iget-object v3, v8, Landroidx/media3/exoplayer/PlaybackInfo;->loadingMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v4, v8, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3, v4}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    add-long v1, v12, v16

    :cond_b
    iget-object v3, v8, Landroidx/media3/exoplayer/PlaybackInfo;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    iget-object v4, v8, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v5, v8, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    move-object v9, v0

    move-wide v10, v12

    move-wide v6, v12

    move-wide v14, v6

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    invoke-virtual/range {v8 .. v20}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithNewPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v8

    :goto_6
    iput-wide v1, v8, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    goto :goto_5

    :goto_7
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    if-eqz v9, :cond_c

    sget-object v1, Landroidx/media3/exoplayer/source/TrackGroupArray;->EMPTY:Landroidx/media3/exoplayer/source/TrackGroupArray;

    :goto_8
    move-object/from16 v18, v1

    goto :goto_9

    :cond_c
    iget-object v1, v8, Landroidx/media3/exoplayer/PlaybackInfo;->trackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    goto :goto_8

    :goto_9
    move-object v1, v0

    move-object/from16 v0, p0

    if-eqz v9, :cond_d

    iget-object v2, v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->emptyTrackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    :goto_a
    move-object/from16 v19, v2

    goto :goto_b

    :cond_d
    iget-object v2, v8, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    goto :goto_a

    :goto_b
    if-eqz v9, :cond_e

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    :goto_c
    move-object/from16 v20, v2

    goto :goto_d

    :cond_e
    iget-object v2, v8, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    goto :goto_c

    :goto_d
    const-wide/16 v16, 0x0

    move-object v9, v1

    move-wide v10, v6

    move-wide v12, v6

    move-wide v14, v6

    invoke-virtual/range {v8 .. v20}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithNewPosition(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJJJLandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;Ljava/util/List;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithLoadingMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v8

    iput-wide v6, v8, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    :goto_e
    return-object v8
.end method

.method private maskWindowPositionMsOrGetPeriodPositionUs(Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Timeline;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iput p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowIndex:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, p1

    if-nez v0, :cond_0

    const-wide/16 p3, 0x0

    :cond_0
    iput-wide p3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingWindowPositionMs:J

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingPeriodIndex:I

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    if-lt p2, v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v3, p2

    goto :goto_2

    :cond_3
    :goto_1
    iget-boolean p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    invoke-virtual {p1, p2}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result p2

    iget-object p3, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {p1, p2, p3}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/media3/common/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide p3

    goto :goto_0

    :goto_2
    iget-object v1, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-static {p3, p4}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/Timeline;->getPeriodPositionUs(Landroidx/media3/common/Timeline$Window;Landroidx/media3/common/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private maybeNotifySurfaceSizeChanged(II)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceSize:Landroidx/media3/common/util/Size;

    invoke-virtual {v0}, Landroidx/media3/common/util/Size;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceSize:Landroidx/media3/common/util/Size;

    invoke-virtual {v0}, Landroidx/media3/common/util/Size;->getHeight()I

    move-result v0

    if-eq p2, v0, :cond_1

    :cond_0
    new-instance v0, Landroidx/media3/common/util/Size;

    invoke-direct {v0, p1, p2}, Landroidx/media3/common/util/Size;-><init>(II)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceSize:Landroidx/media3/common/util/Size;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/exoplayer/i;

    invoke-direct {v1, p1, p2}, Landroidx/media3/exoplayer/i;-><init>(II)V

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    new-instance v0, Landroidx/media3/common/util/Size;

    invoke-direct {v0, p1, p2}, Landroidx/media3/common/util/Size;-><init>(II)V

    const/4 p1, 0x2

    const/16 p2, 0xe

    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static synthetic n(Landroidx/media3/common/MediaMetadata;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->lambda$updatePlaybackInfo$18(Landroidx/media3/common/MediaMetadata;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic o(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->lambda$updatePlaybackInfo$24(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic p(Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->lambda$setTrackSelectionParameters$6(Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private periodPositionUsToWindowPositionUs(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;J)J
    .locals 1

    iget-object p2, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide p1

    add-long/2addr p1, p3

    return-wide p1
.end method

.method public static synthetic q(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->lambda$new$1(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    return-void
.end method

.method public static synthetic r(Landroidx/media3/exoplayer/PlaybackInfo;ILandroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->lambda$updatePlaybackInfo$12(Landroidx/media3/exoplayer/PlaybackInfo;ILandroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private removeMediaSourceHolders(II)V
    .locals 2

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-lt v0, p1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/ShuffleOrder;->cloneAndRemove(II)Landroidx/media3/exoplayer/source/ShuffleOrder;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    return-void
.end method

.method private removeSurfaceCallbacks()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->frameMetadataListener:Landroidx/media3/exoplayer/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMessageInternal(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v0

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/PlayerMessage;->setType(I)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlayerMessage;->setPayload(Ljava/lang/Object;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/PlayerMessage;->send()Landroidx/media3/exoplayer/PlayerMessage;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;->removeVideoSurfaceListener(Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->sphericalGLSurfaceView:Landroidx/media3/exoplayer/video/spherical/SphericalGLSurfaceView;

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    if-eq v0, v2, :cond_1

    const-string v0, "ExoPlayerImpl"

    const-string v2, "SurfaceTextureListener already unset or replaced."

    invoke-static {v0, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :goto_0
    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->componentListener:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    :cond_3
    return-void
.end method

.method public static synthetic s(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->lambda$new$2(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    return-void
.end method

.method private sendRendererMessage(IILjava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-interface {v3}, Landroidx/media3/exoplayer/Renderer;->getTrackType()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMessageInternal(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroidx/media3/exoplayer/PlayerMessage;->setType(I)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroidx/media3/exoplayer/PlayerMessage;->setPayload(Ljava/lang/Object;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/exoplayer/PlayerMessage;->send()Landroidx/media3/exoplayer/PlayerMessage;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendVolumeToRenderers()V
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->volume:F

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/AudioFocusManager;->getVolumeMultiplier()F

    move-result v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    return-void
.end method

.method private setMediaSourcesInternal(Ljava/util/List;IJZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;IJZ)V"
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v0, p2

    iget-object v1, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-direct {v10, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentWindowIndexInternal(Landroidx/media3/exoplayer/PlaybackInfo;)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v2

    iget v4, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    iget-object v4, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_0

    iget-object v4, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v10, v6, v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeMediaSourceHolders(II)V

    :cond_0
    move-object/from16 v4, p1

    invoke-direct {v10, v6, v4}, Landroidx/media3/exoplayer/ExoPlayerImpl;->addMediaSourceHolders(ILjava/util/List;)Ljava/util/List;

    move-result-object v12

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMaskingTimeline()Landroidx/media3/common/Timeline;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v7

    if-ge v0, v7, :cond_2

    :cond_1
    move-wide/from16 v7, p3

    goto :goto_0

    :cond_2
    new-instance v1, Landroidx/media3/common/IllegalSeekPositionException;

    move-wide/from16 v7, p3

    invoke-direct {v1, v4, v0, v7, v8}, Landroidx/media3/common/IllegalSeekPositionException;-><init>(Landroidx/media3/common/Timeline;IJ)V

    throw v1

    :goto_0
    const/4 v9, -0x1

    if-eqz p5, :cond_3

    iget-boolean v0, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    invoke-virtual {v4, v0}, Landroidx/media3/common/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    move v13, v0

    goto :goto_1

    :cond_3
    if-ne v0, v9, :cond_4

    move v13, v1

    move-wide v1, v2

    goto :goto_1

    :cond_4
    move v13, v0

    move-wide v1, v7

    :goto_1
    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-direct {v10, v4, v13, v1, v2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    move-result-object v3

    invoke-direct {v10, v0, v4, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskTimelineAndPosition(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Landroid/util/Pair;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iget v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v13, v9, :cond_7

    if-eq v3, v5, :cond_7

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v4}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v3

    if-lt v13, v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x2

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v3, 0x4

    :cond_7
    :goto_3
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackState(I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v3

    iget-object v11, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v14

    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleOrder:Landroidx/media3/exoplayer/source/ShuffleOrder;

    move-object/from16 v16, v0

    invoke-virtual/range {v11 .. v16}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setMediaSources(Ljava/util/List;IJLandroidx/media3/exoplayer/source/ShuffleOrder;)V

    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, v3, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v4, 0x1

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    invoke-direct {v10, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPositionUsInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v6

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v11, 0x4

    move-object/from16 v0, p0

    move-object v1, v3

    move v3, v5

    move v5, v11

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IIZIJIZ)V

    return-void
.end method

.method private setSurfaceTextureInternal(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    return-void
.end method

.method private setVideoOutputInternal(Ljava/lang/Object;)V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->renderers:[Landroidx/media3/exoplayer/Renderer;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    invoke-interface {v6}, Landroidx/media3/exoplayer/Renderer;->getTrackType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    invoke-direct {p0, v6}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMessageInternal(Landroidx/media3/exoplayer/PlayerMessage$Target;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/media3/exoplayer/PlayerMessage;->setType(I)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroidx/media3/exoplayer/PlayerMessage;->setPayload(Ljava/lang/Object;)Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/media3/exoplayer/PlayerMessage;->send()Landroidx/media3/exoplayer/PlayerMessage;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/PlayerMessage;

    iget-wide v6, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->detachSurfaceTimeoutMs:J

    invoke-virtual {v1, v6, v7}, Landroidx/media3/exoplayer/PlayerMessage;->blockUntilDelivered(J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    const/4 v3, 0x1

    goto :goto_2

    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    :goto_2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    if-ne v0, v1, :cond_3

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    :cond_3
    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    if-eqz v3, :cond_4

    new-instance p1, Landroidx/media3/exoplayer/ExoTimeoutException;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroidx/media3/exoplayer/ExoTimeoutException;-><init>(I)V

    const/16 v0, 0x3eb

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->stopInternal(Landroidx/media3/exoplayer/ExoPlaybackException;)V

    :cond_4
    return-void
.end method

.method private stopInternal(Landroidx/media3/exoplayer/ExoPlaybackException;)V
    .locals 12

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithLoadingMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iget-wide v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    iput-wide v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackState(I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackError(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    :cond_0
    move-object v3, v0

    iget p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    iget-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->stop()V

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, p0

    invoke-direct/range {v2 .. v11}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IIZIJIZ)V

    return-void
.end method

.method public static synthetic t(Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->lambda$release$5(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method public static synthetic u(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->lambda$updatePlaybackInfo$20(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private updateAvailableCommands()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->availableCommands:Landroidx/media3/common/Player$Commands;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wrappingPlayer:Landroidx/media3/common/Player;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->permanentAvailableCommands:Landroidx/media3/common/Player$Commands;

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->getAvailableCommands(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->availableCommands:Landroidx/media3/common/Player$Commands;

    invoke-virtual {v1, v0}, Landroidx/media3/common/Player$Commands;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/exoplayer/k;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/k;-><init>(Landroidx/media3/exoplayer/ExoPlayerImpl;)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_0
    return-void
.end method

.method private updatePlayWhenReady(ZII)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->computePlaybackSuppressionReason(ZI)I

    move-result p2

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    if-ne v1, p1, :cond_1

    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    if-ne v0, p2, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1, p3, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfoForPlayWhenReadyAndSuppressionReasonStates(ZII)V

    return-void
.end method

.method private updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IIZIJIZ)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p5

    iget-object v10, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iput-object v8, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v10, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v1, v8, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0, v1}, Landroidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x1

    xor-int/lit8 v12, v0, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move/from16 v3, p4

    move/from16 v4, p5

    move v5, v12

    move/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/ExoPlayerImpl;->evaluateMediaItemTransitionReason(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/exoplayer/PlaybackInfo;ZIZZ)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, v8, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v3}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, v8, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v3, v8, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v2, v3, v4}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v2

    iget v2, v2, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    iget-object v3, v8, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v4, v7, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v3, v2, v4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v2

    iget-object v2, v2, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    :cond_0
    sget-object v3, Landroidx/media3/common/MediaMetadata;->EMPTY:Landroidx/media3/common/MediaMetadata;

    iput-object v3, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    :cond_1
    if-nez v1, :cond_2

    iget-object v3, v10, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v4, v8, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v3}, Landroidx/media3/common/MediaMetadata;->buildUpon()Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v3

    iget-object v4, v8, Landroidx/media3/exoplayer/PlaybackInfo;->staticMetadata:Ljava/util/List;

    invoke-virtual {v3, v4}, Landroidx/media3/common/MediaMetadata$Builder;->populateFromMetadata(Ljava/util/List;)Landroidx/media3/common/MediaMetadata$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/media3/common/MediaMetadata$Builder;->build()Landroidx/media3/common/MediaMetadata;

    move-result-object v3

    iput-object v3, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Landroidx/media3/common/MediaMetadata;

    :cond_3
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->buildUpdatedMediaMetadata()Landroidx/media3/common/MediaMetadata;

    move-result-object v3

    iget-object v4, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {v3, v4}, Landroidx/media3/common/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v11

    iput-object v3, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iget-boolean v3, v10, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    iget-boolean v5, v8, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    const/4 v6, 0x0

    if-eq v3, v5, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    iget v5, v10, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    iget v13, v8, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    if-eq v5, v13, :cond_5

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_6

    if-eqz v3, :cond_7

    :cond_6
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updateWakeAndWifiLock()V

    :cond_7
    iget-boolean v13, v10, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    iget-boolean v14, v8, Landroidx/media3/exoplayer/PlaybackInfo;->isLoading:Z

    if-eq v13, v14, :cond_8

    const/4 v13, 0x1

    goto :goto_2

    :cond_8
    const/4 v13, 0x0

    :goto_2
    if-eqz v13, :cond_9

    invoke-direct {v7, v14}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePriorityTaskManagerForIsLoadingChange(Z)V

    :cond_9
    if-eqz v12, :cond_a

    iget-object v12, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v14, Landroidx/media3/exoplayer/m;

    const/4 v15, 0x0

    move/from16 v11, p2

    invoke-direct {v14, v8, v11, v15}, Landroidx/media3/exoplayer/m;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v12, v6, v14}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_a
    if-eqz p4, :cond_b

    move/from16 v6, p8

    invoke-direct {v7, v9, v10, v6}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPreviousPositionInfo(ILandroidx/media3/exoplayer/PlaybackInfo;I)Landroidx/media3/common/Player$PositionInfo;

    move-result-object v6

    move-wide/from16 v11, p6

    invoke-direct {v7, v11, v12}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPositionInfo(J)Landroidx/media3/common/Player$PositionInfo;

    move-result-object v11

    iget-object v12, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v14, Landroidx/media3/exoplayer/n;

    invoke-direct {v14, v6, v11, v9}, Landroidx/media3/exoplayer/n;-><init>(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V

    const/16 v6, 0xb

    invoke-virtual {v12, v6, v14}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_b
    if-eqz v1, :cond_c

    iget-object v1, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v6, Landroidx/media3/exoplayer/m;

    const/4 v9, 0x2

    invoke-direct {v6, v2, v0, v9}, Landroidx/media3/exoplayer/m;-><init>(Ljava/lang/Object;II)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0, v6}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_c
    iget-object v0, v10, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    iget-object v1, v8, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eq v0, v1, :cond_d

    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/exoplayer/f;

    const/4 v2, 0x0

    invoke-direct {v1, v8, v2}, Landroidx/media3/exoplayer/f;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    iget-object v0, v8, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eqz v0, :cond_d

    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/exoplayer/f;

    const/4 v6, 0x1

    invoke-direct {v1, v8, v6}, Landroidx/media3/exoplayer/f;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_d
    iget-object v0, v10, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v1, v8, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    if-eq v0, v1, :cond_e

    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    iget-object v1, v1, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->onSelectionActivated(Ljava/lang/Object;)V

    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/exoplayer/f;

    const/4 v2, 0x2

    invoke-direct {v1, v8, v2}, Landroidx/media3/exoplayer/f;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_e
    if-eqz v4, :cond_f

    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->mediaMetadata:Landroidx/media3/common/MediaMetadata;

    iget-object v1, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v2, Landroidx/media3/exoplayer/g;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4}, Landroidx/media3/exoplayer/g;-><init>(Ljava/lang/Object;I)V

    const/16 v0, 0xe

    invoke-virtual {v1, v0, v2}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_f
    if-eqz v13, :cond_10

    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/exoplayer/f;

    const/4 v2, 0x3

    invoke-direct {v1, v8, v2}, Landroidx/media3/exoplayer/f;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_10
    if-nez v5, :cond_11

    if-eqz v3, :cond_12

    :cond_11
    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/exoplayer/f;

    const/4 v2, 0x4

    invoke-direct {v1, v8, v2}, Landroidx/media3/exoplayer/f;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_12
    if-eqz v5, :cond_13

    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/exoplayer/f;

    const/4 v2, 0x5

    invoke-direct {v1, v8, v2}, Landroidx/media3/exoplayer/f;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_13
    if-eqz v3, :cond_14

    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/exoplayer/m;

    const/4 v2, 0x1

    move/from16 v3, p3

    invoke-direct {v1, v8, v3, v2}, Landroidx/media3/exoplayer/m;-><init>(Ljava/lang/Object;II)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_14
    iget v0, v10, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    iget v1, v8, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    if-eq v0, v1, :cond_15

    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/exoplayer/f;

    const/4 v2, 0x6

    invoke-direct {v1, v8, v2}, Landroidx/media3/exoplayer/f;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_15
    invoke-virtual {v10}, Landroidx/media3/exoplayer/PlaybackInfo;->isPlaying()Z

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/PlaybackInfo;->isPlaying()Z

    move-result v1

    if-eq v0, v1, :cond_16

    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/exoplayer/f;

    const/4 v2, 0x7

    invoke-direct {v1, v8, v2}, Landroidx/media3/exoplayer/f;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_16
    iget-object v0, v10, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    iget-object v1, v8, Landroidx/media3/exoplayer/PlaybackInfo;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    invoke-virtual {v0, v1}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/exoplayer/f;

    const/16 v2, 0x8

    invoke-direct {v1, v8, v2}, Landroidx/media3/exoplayer/f;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;I)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/util/ListenerSet;->queueEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_17
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updateAvailableCommands()V

    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->flushEvents()V

    iget-boolean v0, v10, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    iget-boolean v1, v8, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    if-eq v0, v1, :cond_18

    iget-object v0, v7, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;

    iget-boolean v2, v8, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;->onSleepingForOffloadChanged(Z)V

    goto :goto_3

    :cond_18
    return-void
.end method

.method private updatePlaybackInfoForPlayWhenReadyAndSuppressionReasonStates(ZII)V
    .locals 11

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithEstimatedPosition()Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p1, p3}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlayWhenReady(ZI)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v2

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0, p1, p3}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->setPlayWhenReady(ZI)V

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, p0

    move v4, p2

    invoke-direct/range {v1 .. v10}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IIZIJIZ)V

    return-void
.end method

.method private updatePriorityTaskManagerForIsLoadingChange(Z)V
    .locals 0

    return-void
.end method

.method private updateWakeAndWifiLock()V
    .locals 5

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isSleepingForOffload()Z

    move-result v0

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wakeLockManager:Landroidx/media3/exoplayer/WakeLockManager;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, v1}, Landroidx/media3/exoplayer/WakeLockManager;->setStayAwake(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wifiLockManager:Landroidx/media3/exoplayer/WifiLockManager;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/WifiLockManager;->setStayAwake(Z)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wakeLockManager:Landroidx/media3/exoplayer/WakeLockManager;

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/WakeLockManager;->setStayAwake(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wifiLockManager:Landroidx/media3/exoplayer/WifiLockManager;

    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/WifiLockManager;->setStayAwake(Z)V

    :goto_2
    return-void
.end method

.method public static synthetic v(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->lambda$updatePlaybackInfo$17(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Player$Listener;)V

    return-void
.end method

.method private verifyApplicationThread()V
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->constructorFinished:Landroidx/media3/common/util/ConditionVariable;

    invoke-virtual {v1}, Landroidx/media3/common/util/ConditionVariable;->blockUninterruptible()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    aput-object v2, v3, v0

    const-string v1, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread"

    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->throwsWhenUsingWrongThread:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->hasNotifiedFullWrongThreadWarning:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    const-string v3, "ExoPlayerImpl"

    invoke-static {v3, v1, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->hasNotifiedFullWrongThreadWarning:Z

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public addAnalyticsListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->addListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void
.end method

.method public addAudioOffloadListener(Landroidx/media3/exoplayer/ExoPlayer$AudioOffloadListener;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addListener(Landroidx/media3/common/Player$Listener;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ListenerSet;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public getApplicationLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public getContentPosition()J
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getContentPositionInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCurrentMediaItemIndex()I
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentWindowIndexInternal(Landroidx/media3/exoplayer/PlaybackInfo;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskingPeriodIndex:I

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPositionUsInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Landroidx/media3/common/Timeline;
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    return-object v0
.end method

.method public getCurrentTracks()Landroidx/media3/common/Tracks;
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->trackSelectorResult:Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;

    iget-object v0, v0, Landroidx/media3/exoplayer/trackselection/TrackSelectorResult;->tracks:Landroidx/media3/common/Tracks;

    return-object v0
.end method

.method public getDuration()J
    .locals 4

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    iget-object v2, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v0, v2, v3}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->period:Landroidx/media3/common/Timeline$Period;

    iget v2, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v0, v2, v1}, Landroidx/media3/common/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getContentDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playWhenReady:Z

    return v0
.end method

.method public getPlaybackState()I
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    return v0
.end method

.method public getPlaybackSuppressionReason()I
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackSuppressionReason:I

    return v0
.end method

.method public bridge synthetic getPlayerError()Landroidx/media3/common/PlaybackException;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayerError()Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerError()Landroidx/media3/exoplayer/ExoPlaybackException;
    .locals 1

    .line 2
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackError:Landroidx/media3/exoplayer/ExoPlaybackException;

    return-object v0
.end method

.method public getRepeatMode()I
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->repeatMode:I

    return v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->shuffleModeEnabled:Z

    return v0
.end method

.method public getTotalBufferedDuration()J
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isPlayingAd()Z
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    return v0
.end method

.method public isSleepingForOffload()Z
    .locals 1

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    return v0
.end method

.method public prepare()V
    .locals 14

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroidx/media3/exoplayer/AudioFocusManager;->updateAudioFocus(ZI)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReadyChangeReason(ZI)I

    move-result v3

    invoke-direct {p0, v0, v1, v3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlayWhenReady(ZII)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackError(Landroidx/media3/exoplayer/ExoPlaybackException;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iget-object v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    :cond_1
    invoke-virtual {v0, v2}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackState(I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v5

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v0, v3

    iput v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->prepare()V

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x5

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-object v4, p0

    invoke-direct/range {v4 .. v13}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IIZIJIZ)V

    return-void
.end method

.method public release()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Release "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [AndroidXMedia3/1.3.1] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/media3/common/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroidx/media3/common/MediaLibraryInfo;->registeredModules()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayerImpl"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioBecomingNoisyManager:Landroidx/media3/exoplayer/AudioBecomingNoisyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/AudioBecomingNoisyManager;->setEnabled(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->streamVolumeManager:Landroidx/media3/exoplayer/StreamVolumeManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/media3/exoplayer/StreamVolumeManager;->release()V

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wakeLockManager:Landroidx/media3/exoplayer/WakeLockManager;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/WakeLockManager;->setStayAwake(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->wifiLockManager:Landroidx/media3/exoplayer/WifiLockManager;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/WifiLockManager;->setStayAwake(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/AudioFocusManager;->release()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->release()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/exoplayer/j;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroidx/media3/exoplayer/j;-><init>(I)V

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v1}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {v0}, Landroidx/media3/common/util/ListenerSet;->release()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateHandler:Landroidx/media3/common/util/HandlerWrapper;

    invoke-interface {v0, v2}, Landroidx/media3/common/util/HandlerWrapper;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->bandwidthMeter:Landroidx/media3/exoplayer/upstream/BandwidthMeter;

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/upstream/BandwidthMeter;->removeEventListener(Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-boolean v1, v0, Landroidx/media3/exoplayer/PlaybackInfo;->sleepingForOffload:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithEstimatedPosition()Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    :cond_3
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackState(I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->periodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithLoadingMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    iput-wide v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->bufferedPositionUs:J

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Landroidx/media3/exoplayer/PlaybackInfo;->totalBufferedDurationUs:J

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {v0}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->release()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->release()V

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeSurfaceCallbacks()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    :cond_4
    iget-boolean v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    if-nez v0, :cond_5

    sget-object v0, Landroidx/media3/common/text/CueGroup;->EMPTY_TIME_ZERO:Landroidx/media3/common/text/CueGroup;

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->currentCueGroup:Landroidx/media3/common/text/CueGroup;

    iput-boolean v1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playerReleased:Z

    return-void

    :cond_5
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LA/g;->x(Ljava/lang/Object;)V

    throw v2
.end method

.method public seekTo(IJIZ)V
    .locals 11

    move-object v10, p0

    move v0, p1

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v2, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->analyticsCollector:Landroidx/media3/exoplayer/analytics/AnalyticsCollector;

    invoke-interface {v2}, Landroidx/media3/exoplayer/analytics/AnalyticsCollector;->notifySeekStarted()V

    iget-object v2, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-object v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v3

    if-lt v0, v3, :cond_1

    return-void

    :cond_1
    iget v3, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v3, v1

    iput v3, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->pendingOperationAcks:I

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->isPlayingAd()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "ExoPlayerImpl"

    const-string v2, "seekTo ignored because an ad is playing"

    invoke-static {v0, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v2, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    invoke-direct {v0, v2}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Landroidx/media3/exoplayer/PlaybackInfo;)V

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    iget-object v1, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfoUpdateListener:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    check-cast v1, Landroidx/media3/exoplayer/k;

    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/k;->a(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    return-void

    :cond_2
    iget-object v1, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget v3, v1, Landroidx/media3/exoplayer/PlaybackInfo;->playbackState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    iget-object v1, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroidx/media3/exoplayer/PlaybackInfo;->copyWithPlaybackState(I)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    :cond_4
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v8

    move-wide v3, p2

    invoke-direct {p0, v2, p1, p2, p3}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Landroidx/media3/common/Timeline;IJ)Landroid/util/Pair;

    move-result-object v5

    invoke-direct {p0, v1, v2, v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maskTimelineAndPosition(Landroidx/media3/exoplayer/PlaybackInfo;Landroidx/media3/common/Timeline;Landroid/util/Pair;)Landroidx/media3/exoplayer/PlaybackInfo;

    move-result-object v1

    iget-object v5, v10, Landroidx/media3/exoplayer/ExoPlayerImpl;->internalPlayer:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    invoke-static {p2, p3}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v3

    invoke-virtual {v5, v2, p1, v3, v4}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->seekTo(Landroidx/media3/common/Timeline;IJ)V

    const/4 v5, 0x1

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getCurrentPositionUsInternal(Landroidx/media3/exoplayer/PlaybackInfo;)J

    move-result-wide v6

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlaybackInfo(Landroidx/media3/exoplayer/PlaybackInfo;IIZIJIZ)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->createMediaSources(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setMediaSources(Ljava/util/List;Z)V

    return-void
.end method

.method public setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setMediaSources(Ljava/util/List;)V

    return-void
.end method

.method public setMediaSources(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setMediaSources(Ljava/util/List;Z)V

    return-void
.end method

.method public setMediaSources(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource;",
            ">;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v2, -0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setMediaSourcesInternal(Ljava/util/List;IJZ)V

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlaybackState()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroidx/media3/exoplayer/AudioFocusManager;->updateAudioFocus(ZI)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReadyChangeReason(ZI)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->updatePlayWhenReady(ZII)V

    return-void
.end method

.method public setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 3

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->isSetParametersSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->getParameters()Landroidx/media3/common/TrackSelectionParameters;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->trackSelector:Landroidx/media3/exoplayer/trackselection/TrackSelector;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/trackselection/TrackSelector;->setParameters(Landroidx/media3/common/TrackSelectionParameters;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/exoplayer/g;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Landroidx/media3/exoplayer/g;-><init>(Ljava/lang/Object;I)V

    const/16 p1, 0x13

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->removeSurfaceCallbacks()V

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    invoke-direct {p0, p1, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method public setVolume(F)V
    .locals 2

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/Util;->constrainValue(FFF)F

    move-result p1

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->volume:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->volume:F

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->sendVolumeToRenderers()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->listeners:Landroidx/media3/common/util/ListenerSet;

    new-instance v1, Landroidx/media3/exoplayer/h;

    invoke-direct {v1, p1}, Landroidx/media3/exoplayer/h;-><init>(F)V

    const/16 p1, 0x16

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public stop()V
    .locals 4

    invoke-direct {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->verifyApplicationThread()V

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->audioFocusManager:Landroidx/media3/exoplayer/AudioFocusManager;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/AudioFocusManager;->updateAudioFocus(ZI)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->stopInternal(Landroidx/media3/exoplayer/ExoPlaybackException;)V

    new-instance v0, Landroidx/media3/common/text/CueGroup;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->playbackInfo:Landroidx/media3/exoplayer/PlaybackInfo;

    iget-wide v2, v2, Landroidx/media3/exoplayer/PlaybackInfo;->positionUs:J

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/common/text/CueGroup;-><init>(Ljava/util/List;J)V

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl;->currentCueGroup:Landroidx/media3/common/text/CueGroup;

    return-void
.end method
