.class abstract Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer$Api31;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/mediacodec/MediaCodecRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api31"
.end annotation


# direct methods
.method public static setLogSessionIdToMediaCodecFormat(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/media3/exoplayer/analytics/PlayerId;->getLogSessionId()Landroid/media/metrics/LogSessionId;

    move-result-object p1

    invoke-static {}, LA/e;->e()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    invoke-static {p1, v0}, Lv/y;->t(Landroid/media/metrics/LogSessionId;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->mediaFormat:Landroid/media/MediaFormat;

    const-string v0, "log-session-id"

    invoke-static {p1}, LA/e;->l(Landroid/media/metrics/LogSessionId;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
