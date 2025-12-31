.class public abstract Landroidx/media3/common/BasePlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Player;


# instance fields
.field protected final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    return-void
.end method

.method private getRepeatModeForNavigation()I
    .locals 2

    invoke-interface {p0}, Landroidx/media3/common/Player;->getRepeatMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private repeatCurrentMediaItem(I)V
    .locals 6

    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x1

    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/BasePlayer;->seekTo(IJIZ)V

    return-void
.end method

.method private seekToDefaultPositionInternal(II)V
    .locals 6

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/BasePlayer;->seekTo(IJIZ)V

    return-void
.end method

.method private seekToNextMediaItemInternal(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getNextMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Landroidx/media3/common/BasePlayer;->repeatCurrentMediaItem(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, p1}, Landroidx/media3/common/BasePlayer;->seekToDefaultPositionInternal(II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getContentDuration()J
    .locals 3

    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Window;->getDurationMs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final getCurrentMediaItem()Landroidx/media3/common/MediaItem;
    .locals 3

    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    :goto_0
    return-object v0
.end method

.method public final getMediaItemAt(I)Landroidx/media3/common/MediaItem;
    .locals 2

    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, p1, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p1

    iget-object p1, p1, Landroidx/media3/common/Timeline$Window;->mediaItem:Landroidx/media3/common/MediaItem;

    return-object p1
.end method

.method public final getNextMediaItemIndex()I
    .locals 4

    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v1

    invoke-direct {p0}, Landroidx/media3/common/BasePlayer;->getRepeatModeForNavigation()I

    move-result v2

    invoke-interface {p0}, Landroidx/media3/common/Player;->getShuffleModeEnabled()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/common/Timeline;->getNextWindowIndex(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getPreviousMediaItemIndex()I
    .locals 4

    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v1

    invoke-direct {p0}, Landroidx/media3/common/BasePlayer;->getRepeatModeForNavigation()I

    move-result v2

    invoke-interface {p0}, Landroidx/media3/common/Player;->getShuffleModeEnabled()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/common/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final hasNextMediaItem()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getNextMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasPreviousMediaItem()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/media3/common/BasePlayer;->getPreviousMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCurrentMediaItemDynamic()Z
    .locals 3

    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCurrentMediaItemLive()Z
    .locals 3

    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCurrentMediaItemSeekable()Z
    .locals 3

    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/common/BasePlayer;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/media3/common/Timeline$Window;->isSeekable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isPlaying()Z
    .locals 2

    invoke-interface {p0}, Landroidx/media3/common/Player;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Landroidx/media3/common/Player;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroidx/media3/common/Player;->getPlaybackSuppressionReason()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final pause()V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    return-void
.end method

.method public final play()V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroidx/media3/common/Player;->setPlayWhenReady(Z)V

    return-void
.end method

.method public final seekTo(IJ)V
    .locals 6

    .line 1
    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/common/BasePlayer;->seekTo(IJIZ)V

    return-void
.end method

.method public abstract seekTo(IJIZ)V
.end method

.method public final seekToNextMediaItem()V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroidx/media3/common/BasePlayer;->seekToNextMediaItemInternal(I)V

    return-void
.end method

.method public final setMediaItem(Landroidx/media3/common/MediaItem;)V
    .locals 0

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/common/BasePlayer;->setMediaItems(Ljava/util/List;)V

    return-void
.end method

.method public final setMediaItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroidx/media3/common/Player;->setMediaItems(Ljava/util/List;Z)V

    return-void
.end method
