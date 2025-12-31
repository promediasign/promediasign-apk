.class public final Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/LivePlaybackSpeedControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$Builder;
    }
.end annotation


# instance fields
.field private adjustedPlaybackSpeed:F

.field private currentTargetLiveOffsetUs:J

.field private final fallbackMaxPlaybackSpeed:F

.field private final fallbackMinPlaybackSpeed:F

.field private idealTargetLiveOffsetUs:J

.field private lastPlaybackSpeedUpdateMs:J

.field private final maxLiveOffsetErrorUsForUnitSpeed:J

.field private maxPlaybackSpeed:F

.field private maxTargetLiveOffsetUs:J

.field private mediaConfigurationTargetLiveOffsetUs:J

.field private minPlaybackSpeed:F

.field private final minPossibleLiveOffsetSmoothingFactor:F

.field private minTargetLiveOffsetUs:J

.field private final minUpdateIntervalMs:J

.field private final proportionalControlFactor:F

.field private smoothedMinPossibleLiveOffsetDeviationUs:J

.field private smoothedMinPossibleLiveOffsetUs:J

.field private targetLiveOffsetOverrideUs:J

.field private final targetLiveOffsetRebufferDeltaUs:J


# direct methods
.method private constructor <init>(FFJFJJF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->fallbackMinPlaybackSpeed:F

    iput p2, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->fallbackMaxPlaybackSpeed:F

    iput-wide p3, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minUpdateIntervalMs:J

    iput p5, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->proportionalControlFactor:F

    iput-wide p6, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxLiveOffsetErrorUsForUnitSpeed:J

    iput-wide p8, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->targetLiveOffsetRebufferDeltaUs:J

    iput p10, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minPossibleLiveOffsetSmoothingFactor:F

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p3, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->targetLiveOffsetOverrideUs:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minTargetLiveOffsetUs:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    iput p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minPlaybackSpeed:F

    iput p2, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxPlaybackSpeed:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    iput-wide p3, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->idealTargetLiveOffsetUs:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    return-void
.end method

.method public synthetic constructor <init>(FFJFJJFLandroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl$1;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p10}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;-><init>(FFJFJJF)V

    return-void
.end method

.method private adjustTargetLiveOffsetUs(J)V
    .locals 12

    iget-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    const-wide/16 v2, 0x3

    iget-wide v4, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    mul-long v4, v4, v2

    add-long v10, v4, v0

    iget-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    const/high16 v2, 0x3f800000    # 1.0f

    cmp-long v3, v0, v10

    if-lez v3, :cond_0

    iget-wide p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minUpdateIntervalMs:J

    invoke-static {p1, p2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide p1

    iget v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    sub-float/2addr v0, v2

    long-to-float p1, p1

    mul-float v0, v0, p1

    float-to-long v0, v0

    iget p2, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxPlaybackSpeed:F

    sub-float/2addr p2, v2

    mul-float p2, p2, p1

    float-to-long p1, p2

    add-long/2addr v0, p1

    iget-wide p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->idealTargetLiveOffsetUs:J

    iget-wide v2, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    sub-long/2addr v2, v0

    const/4 v0, 0x3

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide v10, v0, v1

    const/4 v1, 0x1

    aput-wide p1, v0, v1

    const/4 p1, 0x2

    aput-wide v2, v0, p1

    invoke-static {v0}, Lcom/google/common/primitives/Longs;->max([J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    sub-float/2addr v0, v2

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->proportionalControlFactor:F

    div-float/2addr v0, v1

    float-to-long v0, v0

    sub-long v6, p1, v0

    iget-wide v8, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    invoke-static/range {v6 .. v11}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    iget-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    :cond_1
    :goto_0
    return-void
.end method

.method private maybeResetTargetLiveOffsetUs()V
    .locals 7

    iget-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    iget-wide v4, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->targetLiveOffsetOverrideUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minTargetLiveOffsetUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    move-wide v0, v4

    :cond_1
    iget-wide v4, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_2

    cmp-long v6, v0, v4

    if-lez v6, :cond_2

    goto :goto_0

    :cond_2
    move-wide v4, v0

    goto :goto_0

    :cond_3
    move-wide v4, v2

    :goto_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->idealTargetLiveOffsetUs:J

    cmp-long v6, v0, v4

    if-nez v6, :cond_4

    return-void

    :cond_4
    iput-wide v4, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->idealTargetLiveOffsetUs:J

    iput-wide v4, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    iput-wide v2, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    iput-wide v2, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    iput-wide v2, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    return-void
.end method

.method private static smooth(JJF)J
    .locals 0

    long-to-float p0, p0

    mul-float p0, p0, p4

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p4

    long-to-float p2, p2

    mul-float p1, p1, p2

    add-float/2addr p1, p0

    float-to-long p0, p1

    return-wide p0
.end method

.method private updateSmoothedMinPossibleLiveOffsetUs(JJ)V
    .locals 3

    sub-long/2addr p1, p3

    iget-wide p3, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    iput-wide p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    const-wide/16 p1, 0x0

    :goto_0
    iput-wide p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    goto :goto_1

    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minPossibleLiveOffsetSmoothingFactor:F

    invoke-static {p3, p4, p1, p2, v0}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smooth(JJF)J

    move-result-wide p3

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetUs:J

    sub-long/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    iget-wide p3, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smoothedMinPossibleLiveOffsetDeviationUs:J

    iget v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minPossibleLiveOffsetSmoothingFactor:F

    invoke-static {p3, p4, p1, p2, v0}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->smooth(JJF)J

    move-result-wide p1

    goto :goto_0

    :goto_1
    return-void
.end method


# virtual methods
.method public getAdjustedPlaybackSpeed(JJ)F
    .locals 6

    iget-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->updateSmoothedMinPossibleLiveOffsetUs(JJ)V

    iget-wide p3, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    cmp-long v0, p3, v3

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iget-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    sub-long/2addr p3, v0

    iget-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minUpdateIntervalMs:J

    cmp-long v3, p3, v0

    if-gez v3, :cond_1

    iget p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    return p1

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iput-wide p3, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->adjustTargetLiveOffsetUs(J)V

    iget-wide p3, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    sub-long/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p3

    iget-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxLiveOffsetErrorUsForUnitSpeed:J

    cmp-long v3, p3, v0

    if-gez v3, :cond_2

    iput v2, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    goto :goto_0

    :cond_2
    iget p3, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->proportionalControlFactor:F

    long-to-float p1, p1

    mul-float p3, p3, p1

    add-float/2addr p3, v2

    iget p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minPlaybackSpeed:F

    iget p2, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxPlaybackSpeed:F

    invoke-static {p3, p1, p2}, Landroidx/media3/common/util/Util;->constrainValue(FFF)F

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    :goto_0
    iget p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->adjustedPlaybackSpeed:F

    return p1
.end method

.method public getTargetLiveOffsetUs()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    return-wide v0
.end method

.method public notifyRebuffer()V
    .locals 7

    iget-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-wide v4, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->targetLiveOffsetRebufferDeltaUs:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    iget-wide v4, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    iput-wide v4, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->currentTargetLiveOffsetUs:J

    :cond_1
    iput-wide v2, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->lastPlaybackSpeedUpdateMs:J

    return-void
.end method

.method public setLiveConfiguration(Landroidx/media3/common/MediaItem$LiveConfiguration;)V
    .locals 3

    iget-wide v0, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    iget-wide v0, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minTargetLiveOffsetUs:J

    iget-wide v0, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxTargetLiveOffsetUs:J

    iget v0, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const v1, -0x800001

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->fallbackMinPlaybackSpeed:F

    :goto_0
    iput v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->minPlaybackSpeed:F

    iget p1, p1, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->fallbackMaxPlaybackSpeed:F

    :goto_1
    iput p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maxPlaybackSpeed:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->mediaConfigurationTargetLiveOffsetUs:J

    :cond_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maybeResetTargetLiveOffsetUs()V

    return-void
.end method

.method public setTargetLiveOffsetOverrideUs(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->targetLiveOffsetOverrideUs:J

    invoke-direct {p0}, Landroidx/media3/exoplayer/DefaultLivePlaybackSpeedControl;->maybeResetTargetLiveOffsetUs()V

    return-void
.end method
