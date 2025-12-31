.class public final Landroidx/media3/exoplayer/source/ProgressiveMediaSource;
.super Landroidx/media3/exoplayer/source/BaseMediaSource;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;
    }
.end annotation


# instance fields
.field private final continueLoadingCheckIntervalBytes:I

.field private final dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field private final drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

.field private final loadableLoadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field private mediaItem:Landroidx/media3/common/MediaItem;

.field private final progressiveMediaExtractorFactory:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;

.field private timelineDurationUs:J

.field private timelineIsLive:Z

.field private timelineIsPlaceholder:Z

.field private timelineIsSeekable:Z

.field private transferListener:Landroidx/media3/datasource/TransferListener;


# direct methods
.method private constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->progressiveMediaExtractorFactory:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;

    iput-object p4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    iput-object p5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->loadableLoadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iput p6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->continueLoadingCheckIntervalBytes:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineDurationUs:J

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;ILandroidx/media3/exoplayer/source/ProgressiveMediaSource$1;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p6}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;I)V

    return-void
.end method

.method private getLocalConfiguration()Landroidx/media3/common/MediaItem$LocalConfiguration;
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/MediaItem$LocalConfiguration;

    return-object v0
.end method

.method private notifySourceInfoRefreshed()V
    .locals 9

    new-instance v8, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;

    iget-wide v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineDurationUs:J

    iget-boolean v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    iget-boolean v5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsLive:Z

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object v7

    const/4 v4, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JZZZLjava/lang/Object;Landroidx/media3/common/MediaItem;)V

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$1;

    invoke-direct {v0, p0, v8}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$1;-><init>(Landroidx/media3/exoplayer/source/ProgressiveMediaSource;Landroidx/media3/common/Timeline;)V

    move-object v8, v0

    :cond_0
    invoke-virtual {p0, v8}, Landroidx/media3/exoplayer/source/BaseMediaSource;->refreshSourceInfo(Landroidx/media3/common/Timeline;)V

    return-void
.end method


# virtual methods
.method public createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 16

    move-object/from16 v14, p0

    iget-object v0, v14, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-interface {v0}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    move-result-object v2

    iget-object v0, v14, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->transferListener:Landroidx/media3/datasource/TransferListener;

    if-eqz v0, :cond_0

    invoke-interface {v2, v0}, Landroidx/media3/datasource/DataSource;->addTransferListener(Landroidx/media3/datasource/TransferListener;)V

    :cond_0
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->getLocalConfiguration()Landroidx/media3/common/MediaItem$LocalConfiguration;

    move-result-object v0

    new-instance v15, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    iget-object v1, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v3, v14, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->progressiveMediaExtractorFactory:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->getPlayerId()Landroidx/media3/exoplayer/analytics/PlayerId;

    move-result-object v4

    check-cast v3, LD/j;

    iget-object v3, v3, LD/j;->b:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/extractor/ExtractorsFactory;

    invoke-static {v3, v4}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->a(Landroidx/media3/extractor/ExtractorsFactory;Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;

    move-result-object v3

    iget-object v4, v14, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->createDrmEventDispatcher(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object v5

    iget-object v6, v14, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->loadableLoadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    invoke-virtual/range {p0 .. p1}, Landroidx/media3/exoplayer/source/BaseMediaSource;->createEventDispatcher(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v7

    iget-object v10, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    iget v11, v14, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->continueLoadingCheckIntervalBytes:I

    iget-wide v8, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->imageDurationMs:J

    invoke-static {v8, v9}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v12

    move-object v0, v15

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v13}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;-><init>(Landroid/net/Uri;Landroidx/media3/datasource/DataSource;Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod$Listener;Landroidx/media3/exoplayer/upstream/Allocator;Ljava/lang/String;IJ)V

    return-object v15
.end method

.method public declared-synchronized getMediaItem()Landroidx/media3/common/MediaItem;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method

.method public onSourceInfoRefreshed(JZZ)V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    iget-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineDurationUs:J

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineDurationUs:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsLive:Z

    if-ne v0, p4, :cond_1

    return-void

    :cond_1
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineDurationUs:J

    iput-boolean p3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    iput-boolean p4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsLive:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->notifySourceInfoRefreshed()V

    return-void
.end method

.method public prepareSourceInternal(Landroidx/media3/datasource/TransferListener;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->transferListener:Landroidx/media3/datasource/TransferListener;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/BaseMediaSource;->getPlayerId()Landroidx/media3/exoplayer/analytics/PlayerId;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->setPlayer(Landroid/os/Looper;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    invoke-interface {p1}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->prepare()V

    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->notifySourceInfoRefreshed()V

    return-void
.end method

.method public releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 0

    check-cast p1, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaPeriod;->release()V

    return-void
.end method

.method public releaseSourceInternal()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->release()V

    return-void
.end method

.method public declared-synchronized updateMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;->mediaItem:Landroidx/media3/common/MediaItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
