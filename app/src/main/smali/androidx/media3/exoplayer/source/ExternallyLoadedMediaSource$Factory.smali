.class public final Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final timelineDurationUs:J


# direct methods
.method public constructor <init>(JLandroidx/media3/exoplayer/source/ExternalLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource$Factory;->timelineDurationUs:J

    return-void
.end method


# virtual methods
.method public createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource;
    .locals 7

    .line 1
    new-instance v6, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource;

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource$Factory;->timelineDurationUs:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource;-><init>(Landroidx/media3/common/MediaItem;JLandroidx/media3/exoplayer/source/ExternalLoader;Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource$1;)V

    return-object v6
.end method

.method public bridge synthetic createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/ExternallyLoadedMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic experimentalParseSubtitlesDuringExtraction(Z)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 1
    invoke-static {p0, p1}, LD/e;->a(Landroidx/media3/exoplayer/source/MediaSource$Factory;Z)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setDrmSessionManagerProvider(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    return-object p0
.end method

.method public setLoadErrorHandlingPolicy(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    return-object p0
.end method

.method public final synthetic setSubtitleParserFactory(Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 1
    invoke-static {p0, p1}, LD/e;->b(Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/extractor/text/SubtitleParser$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p1

    return-object p1
.end method
