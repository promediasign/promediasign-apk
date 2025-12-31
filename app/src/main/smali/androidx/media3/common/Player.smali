.class public interface abstract Landroidx/media3/common/Player;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/Player$Listener;,
        Landroidx/media3/common/Player$Commands;,
        Landroidx/media3/common/Player$PositionInfo;,
        Landroidx/media3/common/Player$Events;
    }
.end annotation


# virtual methods
.method public abstract addListener(Landroidx/media3/common/Player$Listener;)V
.end method

.method public abstract getContentPosition()J
.end method

.method public abstract getCurrentAdGroupIndex()I
.end method

.method public abstract getCurrentAdIndexInAdGroup()I
.end method

.method public abstract getCurrentMediaItem()Landroidx/media3/common/MediaItem;
.end method

.method public abstract getCurrentMediaItemIndex()I
.end method

.method public abstract getCurrentPeriodIndex()I
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getCurrentTimeline()Landroidx/media3/common/Timeline;
.end method

.method public abstract getCurrentTracks()Landroidx/media3/common/Tracks;
.end method

.method public abstract getDuration()J
.end method

.method public abstract getMediaItemAt(I)Landroidx/media3/common/MediaItem;
.end method

.method public abstract getNextMediaItemIndex()I
.end method

.method public abstract getPlayWhenReady()Z
.end method

.method public abstract getPlaybackState()I
.end method

.method public abstract getPlaybackSuppressionReason()I
.end method

.method public abstract getPlayerError()Landroidx/media3/common/PlaybackException;
.end method

.method public abstract getRepeatMode()I
.end method

.method public abstract getShuffleModeEnabled()Z
.end method

.method public abstract getTotalBufferedDuration()J
.end method

.method public abstract hasNextMediaItem()Z
.end method

.method public abstract hasPreviousMediaItem()Z
.end method

.method public abstract isCurrentMediaItemDynamic()Z
.end method

.method public abstract isCurrentMediaItemLive()Z
.end method

.method public abstract isCurrentMediaItemSeekable()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isPlayingAd()Z
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract prepare()V
.end method

.method public abstract release()V
.end method

.method public abstract seekTo(IJ)V
.end method

.method public abstract seekToNextMediaItem()V
.end method

.method public abstract setMediaItem(Landroidx/media3/common/MediaItem;)V
.end method

.method public abstract setMediaItems(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/MediaItem;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract setPlayWhenReady(Z)V
.end method

.method public abstract setTrackSelectionParameters(Landroidx/media3/common/TrackSelectionParameters;)V
.end method

.method public abstract setVideoSurface(Landroid/view/Surface;)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract stop()V
.end method
